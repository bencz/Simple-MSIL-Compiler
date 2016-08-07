EXPRESSION *convertInitToExpression(TYPE *tp, SYMBOL *sp, SYMBOL *funcsp, INITIALIZER *init, EXPRESSION *thisptr, BOOLEAN isdest)
{
	EXPRESSION *rv = NULL, **pos = &rv;
	EXPRESSION *exp = NULL, **expp;
	EXPRESSION *expsym;
    BOOLEAN noClear = FALSE;
	if (isstructured(tp) || isarray(tp))
	{
		INITIALIZER **i2 = &init;
		while (*i2)
			i2 = &(*i2)->next;
		initInsert(i2, NULL, NULL, tp->size, FALSE);
	}
	if (!sp)
	{
		if (thisptr)
			expsym = thisptr;
		else if (funcsp)
			expsym = varNode(en_auto, (SYMBOL *)basetype(funcsp->tp)->syms->table[0]->p); // this ptr
		else
		{
			expsym = intNode(en_c_i, 0);
			diag("convertInitToExpression: no this ptr");
		}
	}
	else switch (sp->storage_class)
	{
		case sc_auto:
		case sc_register:
		case sc_parameter:
			expsym = varNode(en_auto, sp);
			break;
		case sc_localstatic:
			if (sp->linkage3 == lk_threadlocal)
			{
				expsym = exprNode(en_add, thisptr, intNode(en_c_i, sp->offset));
			}
			else
			{
				expsym = varNode(en_label, sp);
			}
			break;
		case sc_static:
		case sc_global:
			if (sp->linkage3 == lk_threadlocal)
			{
				expsym = exprNode(en_add, thisptr, intNode(en_c_i, sp->offset));
			}
			else
			{
				expsym = varNode(en_global, sp);
			}
			break;
		case sc_member:
		case sc_mutable:
			if (thisptr)
				expsym = thisptr;
			else if (funcsp)
				expsym = varNode(en_auto, (SYMBOL *)basetype(funcsp->tp)->syms->table[0]->p); // this ptr
			else
			{
				expsym = intNode(en_c_i, 0);
				diag("convertInitToExpression: no this ptr");
			}
			expsym = exprNode(en_add, expsym, intNode(en_c_i, sp->offset));
			break;
		case sc_external:
		default:
			diag("convertInitToExpression: unknown sym type");
			expsym = intNode(en_c_i, 0);
			break;
	}
	while (init)
	{
		exp = NULL;
		if (init->basetp)
		{
			if (init->noassign)
			{
				exp = init->exp;
				if (exp->type == en_thisref)
					exp = exp->left;
				if (thisptr && exp->type == en_func)
				{
					EXPRESSION *exp1 = init->offset ? exprNode(en_add, expsym, intNode(en_c_i, init->offset)) : expsym;
					if (isarray(tp))
					{
						exp->v.func->arguments->exp = exp1;
					}
					else
					{
						exp->v.func->thisptr = exp1;
					}
				}
				exp = init->exp;
			}
			else if (!init->exp)
			{
				// usually empty braces, coudl be an error though
				exp = exprNode(en_blockclear, expsym, NULL);
				exp->size = init->offset;
			}
			else if (isstructured(init->basetp) || isarray(init->basetp))
			{
				INITIALIZER *temp = init;
				if (isstructured(temp->basetp))
				{
					EXPRESSION *exp2 = init->exp;
					while(exp2->type == en_not_lvalue)
						exp2 = exp2->left;
					if (exp2->type == en_func && exp2->v.func->returnSP)
					{
						exp2->v.func->returnSP->allocate = FALSE;
						exp2->v.func->returnEXP = expsym;
						exp = exp2;
                        noClear = TRUE;
					}
					else
					{
						exp = exprNode(en_blockassign, expsym, exp2);
						exp->size = init->basetp->size;
					}
				}
				else
				{
					TYPE *btp = init->basetp;
					while(isarray(btp))
						btp = basetype(btp)->btp;
					btp = basetype(btp);
					while (temp)
					{
						if (temp->exp)
							if (!isarithmeticconst(temp->exp) && !isconstaddress(temp->exp))
								break;
						temp = temp->next;
					}
					if (temp)
					{
						/* some members are non-constant expressions */
						if (!cparams.prm_c99)
							error(ERR_C99_NON_CONSTANT_INITIALIZATION);
						if (!sp)
						{
							expsym = anonymousVar(sc_auto, init->basetp);
							sp = expsym->v.sp;
						}
						if (!isstructured(btp) || btp->sp->trivialCons)
						{
							exp = exprNode(en_blockclear, expsym, NULL);
							exp->size = init->basetp->size;
							exp = exprNode(en_void, exp, NULL);
							expp = &exp->right;
						}
						else
						{
							expp = &exp;
						}
						{
							EXPRESSION *right = init->exp;
							if (!isstructured(btp))
							{
								EXPRESSION *asn = exprNode(en_add, expsym, intNode(en_c_i, init->offset));
								deref(init->basetp, &asn);
								cast(init->basetp, &right);
								right = exprNode(en_assign, asn, right);
							}
							*expp = exprNode(en_void, *expp, right);
							expp = &(*expp)->right;
						}
					}
					else
					{
						/* constant expression */
						SYMBOL *spc ;
						IncGlobalFlag();
						exp = anonymousVar(sc_localstatic, init->basetp);
						spc = exp->v.sp;
						spc->init = init ;
						insertInitSym(spc);
						insert(spc, localNameSpace->syms);
						DecGlobalFlag();
						spc->label =nextLabel++;
						if (expsym)
						{
							exp = exprNode(en_blockassign, expsym, exp);
							exp->size = init->basetp->size;
						}
					}
				}
			}
			else
			{
				EXPRESSION *exps = expsym;
				if (init->offset)
					exps = exprNode(en_add, exps, intNode(en_c_i, init->offset));
				deref(init->basetp, &exps);
				exp = init->exp;
				if (exp->type == en_void)
				{
					cast(init->basetp, &exp->right);
					if (expsym)
						exp->right = exprNode(en_assign, exps, exp->right);
				}
				else
				{
					cast(init->basetp, &exp);
					if (exps)
						exp = exprNode(en_assign, exps, exp);
				}
			}
			if (sp && sp->init && isatomic(init->basetp) && needsAtomicLockFromType(init->basetp))
			{
				EXPRESSION *p1 = exprNode(en_add, expsym->left, intNode(en_c_i, init->basetp->size - ATOMIC_FLAG_SPACE));
				deref(&stdint, &p1);
				p1 = exprNode(en_assign, p1, intNode(en_c_i, 0));
				exp = exprNode(en_void, exp, p1);
			}
		}
		if (exp)
		{
			if (*pos)
			{
				*pos = exprNode(en_void, *pos, exp);
				pos = &(*pos)->right;
			}
			else
			{
				*pos = exp;
			}
		}
		init = init->next;
	}
	if (sp->storage_class == sc_localstatic)
	{
		if (isdest)
		{
			rv = exprNode(en_voidnz, exprNode(en_void, sp->localInitGuard, rv), intNode(en_c_i, 0));
		}
		else
		{
			EXPRESSION *guard = anonymousVar(sc_static, &stdint);
			insertInitSym(guard->v.sp);
			deref(&stdpointer, &guard);
			optimize_for_constants(&rv);
			rv = exprNode(en_voidnz, exprNode(en_void,
			exprNode(en_not, guard, NULL),
			exprNode(en_void, rv, exprNode(en_autoinc, guard, intNode(en_c_i, 1)))), intNode(en_c_i, 0));
			sp->localInitGuard = guard;
		}
	}
    // plop in a clear block if necessary
    if (sp && !noClear && (isarray(tp) || isstructured(tp)))
    {
        EXPRESSION *fexp = expsym;
        EXPRESSION *exp;
        exp = exprNode(en_blockclear, fexp, NULL); 
        exp->size = sp->tp->size;
        rv = exprNode(en_void, exp, rv);
    }
	if (isstructured(tp))
	{
		if (*pos)
		{
			*pos = exprNode(en_void, *pos, expsym);
			pos = &(*pos)->right;
		}
		else
		{
			*pos = expsym;
		}
	}
	return rv;
}

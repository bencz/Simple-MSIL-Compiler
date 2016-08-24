del *.exe *.il

forfiles /m *.c /c "..\occil /O- /I../../../../include @file"
forfiles /m *.il /c "cmd /c ilasm @file"

del *.il

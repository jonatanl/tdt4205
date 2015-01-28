parser: lex.yy.c parser.tab.c
	gcc -o parser lex.yy.c parser.tab.c -lm

parser.tab.c : parser.y
	bison --defines=parser.h parser.y
	
lex.yy.c : scanner.l
	flex scanner.l
	
clean :
	rm -f  lex.yy.c lexer parser parser.tab.y

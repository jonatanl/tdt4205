%{
#include <math.h>
#include <stdio.h>
#include <string.h>
int yyerror(char*);
extern char* yytext;
%}

%token INT PLUS MINUS MULT DIV SQRT

%left PLUS MINUS
%left MULT DIV
%nonassoc SQRT

%%

program : expression { return $1; }
        ;
expression : expression PLUS expression  { $$ = $1 + $3; }
		   | expression MINUS expression { $$ = $1 - $3; }
		   | expression DIV expression   { $$ = $1 / $3; }
		   | expression MULT expression  { $$ = $1 * $3; }
		   | SQRT expression { $$ = (int)sqrt($2); }
           | INT             { $$ = $1; }
           ;
%%

int main(){
    
    int a = yyparse();
    printf("Answer is : %d\n", a);
}

int yyerror(char* s){
    printf("Error");
}

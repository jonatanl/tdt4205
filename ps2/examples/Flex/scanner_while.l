%{
#include <stdio.h>
%}

%option noyywrap

%%
while[^\{]*\{[^\}]*\}  {printf(""); }
.|\n 				   {printf("%s", yytext); }
%%

int main(){
	yylex();
}

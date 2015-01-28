%{
#include <stdio.h>
%}

%option noyywrap

DIGIT [0-9]
WHITESPACE [\ \t\n]

%%
{DIGIT}+			{ printf("INT(%s)\n", yytext); }
{DIGIT}*\.{DIGIT}+  { printf("FLOAT(%s)\n", yytext); }
"+"				    { printf("PLUS\n"); }
"-"				    { printf("MINUS\n"); }
"*"				    { printf("MULT\n"); }
"/"				    { printf("DIV\n"); }
"SQRT"				{ printf("SQRT\n");}
{WHITESPACE}+	    {}
%%

int main(){
	yylex();
}

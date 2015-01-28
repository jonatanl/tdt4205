%{
#include <stdio.h>
#include "parser.h"
%}

%option noyywrap

DIGIT [0-9]
WHITESPACE [\ \t\n]

%%
{DIGIT}+			{ yylval = atoi(yytext); return INT; }
{DIGIT}*\.{DIGIT}+  { yylval = atof(yytext); return FLOAT; }
"+"				    { return PLUS; }
"-"				    { return MINUS; }
"*"				    { return MULT; }
"/"				    { return DIV; }
"SQRT"				{ return SQRT; }
{WHITESPACE}+	    {}
%%


%{
#include <stdio.h>
#include "parser.h"
%}

%option noyywrap

DIGIT [0-9]
WHITESPACE [\ \t\n]

%%
{DIGIT}+			{ return INT; }
"+"				    { return PLUS; }
"-"				    { return MINUS; }
{WHITESPACE}+	    {}
%%


%{
/* This %{ ... %} section is code that is glued into the generated scanner. */
#include "parser.h"

extern int outputStage; // This variable is located in vslc.c
    #define RETURN(t) do {                                             \
        if ( outputStage == 1 )                                        \
            printf( "TOKEN ( %d,\t'%s' )\n", t, yytext );    \
        return t;                                                      \
    } while ( 0 )
    
    
%}

%option array
%option noyywrap
%option yylineno



Digit [0-9]
Letter[a-zA-Z]
Whitespace [\ \t\n]

%%

INT									{RETURN(INT); }
FLOAT								{RETURN(FLOAT); }
BOOL								{RETURN(BOOL); }
STRING 								{RETURN(STRING); }
VOID								{RETURN(VOID); }
FUNC								{RETURN(FUNC); }
START								{RETURN(START); }
PRINT								{RETURN(PRINT); }
RETURN								{RETURN(RETURN); }
IF									{RETURN(IF); }
THEN 								{RETURN(THEN); }
ELSE 								{RETURN(ELSE); }
END 								{RETURN(END); }
WHILE 								{RETURN(WHILE); }
DO 									{RETURN(DO); }
NEW									{RETURN(NEW); }
ARRAY 								{RETURN(ARRAY); }
FOR									{RETURN(FOR); }
TO 									{RETURN(TO); }
TRUE								{RETURN(TRUE_CONST); }
FALSE								{RETURN(FALSE_CONST); }

{Digit}+ 							{RETURN(INT_CONST); }
{Digit}*\.{Digit}+					{RETURN(FLOAT_CONST); }
{Whitespace}+	    				{}
{Letter}({Letter}|{Digit}|"_")*		{RETURN(IDENTIFIER); }

"+"				    				{RETURN('+'); }
"-"									{RETURN('-'); }
"*"									{RETURN('*'); }
"/"									{RETURN('/'); }
"["									{RETURN('['); }
"]" 								{RETURN(']'); }
"."									{RETURN('.'); }
","									{RETURN(','); }
";"									{RETURN(';'); }
"("									{RETURN('('); }
")"									{RETURN(')'); }
":="								{RETURN(ASSIGN); }
"<="								{RETURN(LEQUAL); }
"!="								{RETURN(NEQUAL); }
"&&"								{RETURN(AND); }
"||" 								{RETURN(OR); }
"!"									{RETURN('!'); }
"<"									{RETURN('<'); }
">"									{RETURN('>'); }
"==" 								{RETURN(EQUAL); }
">="								{RETURN(GEQUAL); }
"//"[^\n]+ 							{}
\"(\\.|[^\"])*\"					{RETURN(STRING_CONST); }

%%
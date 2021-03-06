%{
#include <math.h>
#include <stdio.h>
#include <string.h>

int yyerror(char*);
extern char* yytext;

typedef struct node_t{
	struct node_t* left;
	struct node_t* right;
	char operation;
	int value;
} node_t;

node_t* root;

#define YYSTYPE node_t*
%}

%token INT PLUS MINUS
%left PLUS MINUS

%%

program : expression { root = $1; }
        ;
expression : expression PLUS expression  { $$ = (node_t*)malloc(sizeof(node_t));
		   								   $$->left = $1;
		   								   $$->right = $3;
		   								   $$->operation = '+'; }
		   								   
		   | expression MINUS expression { $$ = (node_t*)malloc(sizeof(node_t));
		   								   $$->left = $1;
		   								   $$->right = $3;
		   								   $$->operation = '-'; }
		   								   
           | INT             { $$ = (node_t*)malloc(sizeof(node_t));
           					   $$->left = NULL;
           					   $$-> right = NULL;
           					   $$->value = atoi(yytext); }
           ;
%%

int compute(node_t* n){
	if(n->left == NULL && n->right == NULL){
		return n->value;
	}
	else{
		if(n->operation == '+'){
			return compute(n->left) + compute(n->right);
		}
		else{
			return compute(n->left) - compute(n->right);
		}
	}
}
		

int main(){
    yyparse();
    
    printf("Answer is: %d\n", compute(root));
}

int yyerror(char* s){
    printf("Error");
}

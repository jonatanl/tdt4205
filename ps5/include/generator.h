#ifndef GENERATOR
#define GENERATOR

#include <stdint.h>
#include <stdbool.h>
#include "tree.h"

/* Instructions */
typedef enum {
	COMMMENT, STRING, LABEL, NIL, MOVE32, // Pseudo opcodes

	PUSH, POP, MOV, LDR, STR, // Data movement
	MOVGE, MOVGT, MOVLE, MOVLT, MOVEQ, MOVNE, // Conditional move
	BL, B, BEQ, BNE, // Branch
	ADD, SUB, MUL, DIV, NEG, // Arithmetic
	CMP, // Compare

	// Floating point
	CVTSD,LOADS, STORES, FADD, FSUB, FMUL, FDIV, FCMP, MOVES, MOVED, FNEG
} opcode_t;

/* A struct to make linked lists from instructions */
typedef struct instr {
	opcode_t opcode;
	char *operands[3];
	int offsets[2];
	struct instr *next;
} instruction_t;



/* Prototypes for auxiliaries (implemented at the end of this file) */
static void instructions_print ( FILE *stream );
static void instructions_finalize ( void );
static void print_start();
static void print_end();

void gen_default ( node_t *root, int scopedepth );
void gen_PROGRAM ( node_t *root, int scopedepth );
void gen_FUNCTION ( node_t *root, int scopedepth );
void gen_DECLARATION_STATEMENT (node_t *root, int scopedepth);
void gen_PRINT_LIST ( node_t *root, int scopedepth );
void gen_PRINT_ITEM ( node_t *root, int scopedepth );
void gen_PRINT_STATEMENT (node_t* root, int scopedepth);
void gen_EXPRESSION ( node_t *root, int scopedepth );
void gen_VARIABLE ( node_t *root, int scopedepth );
void gen_INTEGER ( node_t *root, int scopedepth );
void gen_CONSTANT (node_t *root, int scopedepth);
void gen_ASSIGNMENT_STATEMENT ( node_t *root, int scopedepth );
void gen_RETURN_STATEMENT ( node_t *root, int scopedepth );
void gen_int_expression(node_t* root, int scopedepth);
void gen_float_expression(node_t* root, int scopedepth);
void gen_string_expression(node_t* root, int scopedepth);
void gen_bool_expression(node_t* root, int scopedepth);


// ps6 :
void gen_WHILE_STATEMENT ( node_t *root, int scopedepth );
void gen_FOR_STATEMENT ( node_t *root, int scopedepth );
void gen_IF_STATEMENT ( node_t *root, int scopedepth );
int peephole;

#endif

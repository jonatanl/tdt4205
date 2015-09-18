#include "generator.h"
#include "optimizer.h"
extern int outputStage; // This variable is located in vslc.c

int peephole = 1;

static char
*lr = "lr", *r0 = "r0", *r1 = "r1", *r2 = "r2", *r3 = "r3",
*fp = "fp", *sp = "sp", *r5 = "r5", *r6 = "r6",
*d0 = "d0", *d1="d1", *s0 = "s0", *s1 = "s1", *pc = "pc";

static char* currentClass = NULL;



/* Start and last element for emitting/appending instructions */
static instruction_t *start = NULL, *last = NULL;



// The counter used for the debug printing.
static int nodeCounter = 0;

/* Provided auxiliaries... */

static void instruction_append ( instruction_t *next )
{
    if ( start != NULL )
    {
        last->next = next;
        last = next;
    }
    else
        start = last = next;
}

//==================================================================
// Counter variables used to support nested if, while and for loops
//==================================================================
static int forCounter = 0;
static int ifCounter = 0;
static int whileCounter = 0;


void instruction_add ( opcode_t op, char *arg1, char *arg2, int off1, int off2 )
{
    instruction_t *i = (instruction_t *) malloc ( sizeof(instruction_t) );
    i->opcode = op;
    i->offsets[0] = off1; i->offsets[1] = off2;
    i->operands[0] = arg1; i->operands[1] = arg2;
    i->next = NULL;
    instruction_append ( i );
}

void instruction_add3 ( opcode_t op, char* arg1, char* arg2, char* arg3)
{
    instruction_t *i = (instruction_t *) malloc ( sizeof(instruction_t) );
    i->opcode = op;
    i->offsets[0] = 0; i->offsets[1] = 0;
    i->operands[0] = arg1; i->operands[1] = arg2; i->operands[2] = arg3;
    i->next = NULL;
    instruction_append ( i );
}





/*
 * Smart wrapper for "printf". 
 * Makes a comment in the assembly to guide.
 * Also prints a copy to the debug stream if needed.
 */
void tracePrint( const char * string, ... )
{
    va_list args;
    char buff[1000];
    char buff2[1000];
    // 
    va_start (args, string);
    vsprintf(buff, string, args);
    va_end (args);
    
    sprintf(buff2, "%d %s", nodeCounter++, buff);
    
    if( outputStage == 10 )
        fprintf(stderr, "%s", buff2);
    
    instruction_add ( COMMMENT, STRDUP( buff2 ), NULL, 0, 0 );
}


void gen_default ( node_t *root, int scopedepth)
{
    /* Everything else can just continue through the tree */
    if(root == NULL){
        return;
    }
    
    for ( int i=0; i<root->n_children; i++ )
        if( root->children[i] != NULL )
            root->children[i]->generate ( root->children[i], scopedepth );
}


void gen_PROGRAM ( node_t *root, int scopedepth)
{
    /* Output the data segment */
    if( outputStage == 12 )
        strings_output ( stdout );
    instruction_add ( STRING, STRDUP( ".text" ), NULL, 0, 0 );
    
    tracePrint("Starting PROGRAM\n");
    
    gen_default(root, scopedepth);//RECUR();
    
    print_start();
    
    
    /* TODO: Insert a call to the first defined function here */
    node_t *func_list = root->children[root->n_children -1];
    node_t *first_func = func_list->children[0];
    function_symbol_t *entry = first_func->function_entry;
    char buffer[100];
    sprintf(buffer, "_%s", entry->label);
    instruction_add ( BL, STRDUP(buffer), NULL, 0, 0 );
    
    tracePrint("End PROGRAM\n");
    
    print_end();
    
    
    if( outputStage == 12 )
        instructions_print ( stdout );
}



void gen_FUNCTION ( node_t *root, int scopedepth )
{
    gf(root, scopedepth);
     
}






void gen_DECLARATION_STATEMENT (node_t *root, int scopedepth)
{
    gd(root, scopedepth);
}


void gen_PRINT_STATEMENT(node_t* root, int scopedepth)
{
    tracePrint("Starting PRINT_STATEMENT\n");
    
    instruction_add(PUSH, r6, NULL, 0,0);
    instruction_add(POP, r6, NULL, 0,0);
    
    for(int i = 0; i < root->children[0]->n_children; i++){
        
        root->children[0]->children[i]->generate(root->children[0]->children[i], scopedepth);
        
        //Pushing the .INTEGER constant, which will be the second argument to printf,
        //and cause the first argument, which is the result of the expression, and is
        //allready on the stack to be printed as an integer
        base_data_type_t t = root->children[0]->children[i]->data_type.base_type;
        switch(t)
        {
            case INT_TYPE:
                instruction_add(STRING, STRDUP("\tmovw	r0, #:lower16:.INTEGER"), NULL, 0,0);
                instruction_add(STRING, STRDUP("\tmovt	r0, #:upper16:.INTEGER"), NULL, 0,0);
                instruction_add(POP, r1, NULL, 0,0);
                break;
                
            case FLOAT_TYPE:
                instruction_add(LOADS, sp, s0, 0,0);
                instruction_add(CVTSD, s0, d0, 0,0);
                instruction_add(STRING, STRDUP("\tfmrrd	r2, r3, d0"), NULL, 0,0);
                instruction_add(STRING, STRDUP("\tmovw	r0, #:lower16:.FLOAT"), NULL, 0,0);
                instruction_add(STRING, STRDUP("\tmovt	r0, #:upper16:.FLOAT"), NULL, 0,0);
                
                // And now the tricky part... 8-byte stack alignment :(
                // We have at least 4-byte alignment always.
                // Check if its only 4-byte aligned right now by anding that bit in the stack-pointer.
                // Store the answer in r5, and set the zero flag.
                instruction_add(STRING, STRDUP("\tandS	r5, sp, #4"), NULL, 0,0);
                // Now use the zero flag as a condition to optionally change the stack-pointer
                instruction_add(STRING, STRDUP("\tpushNE	{r5}"), NULL, 0,0);
                break;
                
            case BOOL_TYPE:
                instruction_add(POP, r1, NULL, 0,0);
                instruction_add(MOV, r0, "#0", 0,0);
                instruction_add(CMP, r0, r1, 0,0);
                instruction_add(MOV, r1, "#0", 0,0);
                instruction_add(MOVNE, r1, "#1", 0,0);
                
                instruction_add(STRING, STRDUP("\tmovw	r0, #:lower16:.INTEGER"), NULL, 0,0);
                instruction_add(STRING, STRDUP("\tmovt	r0, #:upper16:.INTEGER"), NULL, 0,0);
                
                break;
                
            case STRING_TYPE:
                instruction_add(POP, r0, NULL, 0,0);
                break;
                
            default:
                instruction_add(PUSH, STRDUP("$.INTEGER"), NULL, 0,0);
                fprintf(stderr, "WARNING: attempting to print something not int, float or bool\n");
                break;
        }
        
        instruction_add(BL, STRDUP("printf"), NULL,0,0);
        
        // Undo stack alignment.
        if(t == FLOAT_TYPE) {
            // Redo the zero flag test on r5, as it will give the same answer as the first test on sp.
            instruction_add(STRING, STRDUP("\tandS	r5, #4"), NULL, 0,0);
            // Conditionally remove the alignment. 
            instruction_add(STRING, STRDUP("\tpopNE	{r5}"), NULL, 0,0);
        }
    }
    
    instruction_add(MOVE32, r0, STRDUP("0x0A"), 0,0);
    instruction_add(BL, STRDUP("putchar"), NULL, 0,0);
    
    tracePrint("Ending PRINT_STATEMENT\n");
}


void gen_EXPRESSION ( node_t *root, int scopedepth )
{
    /*
     * Expressions:
     * Handle any nested expressions first, then deal with the
     * top of the stack according to the kind of expression
     * (single variables/integers handled in separate switch/cases)
     */
    tracePrint ( "Starting EXPRESSION of type %s\n", (char*) root->expression_type.text);
    
    switch(root->expression_type.index){
        
        case ARRAY_INDEX_E:
            ge(root, scopedepth);
            break;
            
        case NEW_E:
            ge(root, scopedepth);
            break;
            
        case FUNC_CALL_E:
            ge(root, scopedepth);
            break;
            
            
            
        default:
            switch(root->data_type.base_type){
                
                
                case FLOAT_TYPE:
                    gen_float_expression(root, scopedepth);
                    break;
                case INT_TYPE:
                    gen_int_expression(root, scopedepth);
                    break;
                case BOOL_TYPE:
                {
                    switch(root->children[0]->data_type.base_type){
                        
                        case FLOAT_TYPE:
                            gen_float_expression(root, scopedepth);
                            break;
                        case INT_TYPE:
                            gen_int_expression(root, scopedepth);
                            break;
                        case BOOL_TYPE:
                            gen_bool_expression(root, scopedepth);
                            break;
                        default:
                            fprintf(stderr, "This should never happen\n");
                            exit(-1);
                    }
                    break;
                }
                        default:
                            fprintf(stderr, "This should never happen\n");
                            exit(-1);
                            
            }
            break;
    }
    
    tracePrint ( "Ending EXPRESSION of type %s\n", (char*) root->expression_type.text);
}

void gen_int_expression(node_t* root, int scopedepth)
{
    node_t* leftChild = root->children[0];
    node_t* rightChild;

    leftChild->generate(leftChild, scopedepth);

    if (root->n_children > 1 && root->children[1] != NULL) {
        rightChild = root->children[1];
        rightChild->generate(rightChild, scopedepth);

        // Pop right child result from stack
        instruction_add(POP, r2, NULL, 0, 0);
    }


    // Pop left child result from stack
    instruction_add(POP, r1, NULL, 0, 0);

    switch(root->expression_type.index){
        case UMINUS_E:
            // A = 0 - B
            instruction_add(MOV, r2, STRDUP("#0"), 0, 0);
            instruction_add3(SUB, r1, r2, r1);
            break;
            
        case ADD_E:
            instruction_add3(ADD, r1, r1, r2);
            break;
        
        case SUB_E:
            instruction_add3(SUB, r1, r1, r2);
            break;
            
        case MUL_E:
            instruction_add3(MUL, r1, r1, r2);
            break;
            
        case DIV_E:
            instruction_add3(DIV, r1, r1, r2);
            break;
            
        case LESS_E:
            instruction_add(CMP, r1, r2, 0, 0);
            instruction_add(MOVLT, r1, STRDUP("#1"), 0, 0);
            instruction_add(MOVGE, r1, STRDUP("#0"), 0, 0);
            break;
            
        case GREATER_E:
            instruction_add(CMP, r1, r2, 0, 0);
            instruction_add(MOVGT, r1, STRDUP("#1"), 0, 0);
            instruction_add(MOVLE, r1, STRDUP("#0"), 0, 0);
            break;
            
        case GEQUAL_E:
            instruction_add(CMP, r1, r2, 0, 0);
            instruction_add(MOVGE, r1, STRDUP("#1"), 0, 0);
            instruction_add(MOVLT, r1, STRDUP("#0"), 0, 0);
            break;
            
        case LEQUAL_E:
            instruction_add(CMP, r1, r2, 0, 0);
            instruction_add(MOVLE, r1, STRDUP("#1"), 0, 0);
            instruction_add(MOVGT, r1, STRDUP("#0"), 0, 0);
            break;
            
        case EQUAL_E:
            instruction_add(CMP, r1, r2, 0, 0);
            instruction_add(MOVEQ, r1, STRDUP("#1"), 0, 0);
            instruction_add(MOVNE, r1, STRDUP("#0"), 0, 0);
            break;
            
        case NEQUAL_E:
            instruction_add(CMP, r1, r2, 0, 0);
            instruction_add(MOVNE, r1, STRDUP("#1"), 0, 0);
            instruction_add(MOVEQ, r1, STRDUP("#0"), 0, 0);
            break;
    }

    // ADD final result to the stack
    instruction_add(PUSH, r1, NULL, 0, 0);
}

//You are not required to implement this function/floating point functionality
void gen_float_expression(node_t* root, int scopedepth)
{
}


void gen_bool_expression(node_t* root, int scopedepth)
{
    node_t* leftChild = root->children[0];
    node_t* rightChild;

    leftChild->generate(leftChild, scopedepth);

    if (root->n_children > 1 && root->children[1] != NULL) {
        rightChild = root->children[1];
        rightChild->generate(rightChild, scopedepth);
        // Pop right child result from stack
        instruction_add(POP, r2, NULL, 0, 0);
    }

    // Pop left child result from stack
    instruction_add(POP, r1, NULL, 0, 0);

    switch(root->expression_type.index){
        // OR is the same as A + B
        case OR_E:
            instruction_add3(ADD, r1, r1, r2);
            break;
        
        // AND is the same as A * B
        case AND_E:
            instruction_add3(MUL, r1, r1, r2);
            break;
            
        case EQUAL_E:
            instruction_add(CMP, r1, r2, 0, 0);
            instruction_add(MOVEQ, r1, STRDUP("#1"), 0, 0);
            instruction_add(MOVNE, r1, STRDUP("#0"), 0, 0);
            break;
            
        case NEQUAL_E:
            instruction_add(CMP, r1, r2, 0, 0);
            instruction_add(MOVNE, r1, STRDUP("#1"), 0, 0);
            instruction_add(MOVEQ, r1, STRDUP("#0"), 0, 0);
            break;
            
        case NOT_E:
            instruction_add(CMP, r1, STRDUP("#0"), 0, 0);
            instruction_add(MOVNE, r1, STRDUP("#0"), 0, 0);
            instruction_add(MOVEQ, r1, STRDUP("#1"), 0, 0);
            break;
            
    }

    instruction_add(PUSH, r1, NULL, 0, 0);
}


void gen_VARIABLE ( node_t *root, int scopedepth )
{
    gv(root, scopedepth);

}

void gen_CONSTANT (node_t * root, int scopedepth)
{
        gc(root, scopedepth);
}

void gen_ASSIGNMENT_STATEMENT ( node_t *root, int scopedepth )
{
    ga(root, scopedepth);
}

void gen_RETURN_STATEMENT ( node_t *root, int scopedepth )
{
    gr(root, scopedepth);
}


void gen_WHILE_STATEMENT ( node_t *root, int scopedepth )
{
    tracePrint ( "Starting WHILE_STATEMENT\n");

    node_t* expressionChild = root->children[0];
    node_t* statementListChild = root->children[1];

    char whileStartBuffer[24];
    char whileEndBuffer[24];
    char whileStartBufferLabel[24];
    sprintf(whileStartBuffer, "while_start_label_%d", whileCounter);
    strcpy(whileStartBufferLabel, whileStartBuffer);
    strcat(whileStartBufferLabel, ":");
    sprintf(whileEndBuffer, "while_end_label_%d", whileCounter);
    whileCounter++;

    instruction_add(STRING, STRDUP(whileStartBufferLabel), NULL, 0, 0);

    // Evaluate expression
    expressionChild->generate(expressionChild, scopedepth);
    instruction_add(POP, r1, NULL, 0, 0);
    instruction_add(MOV, r2, STRDUP("#0"), 0, 0);
    instruction_add(CMP, r1, r2, 0, 0);

    // Jump to end if false
    instruction_add(BEQ, STRDUP(whileEndBuffer), NULL, 0, 0);

    statementListChild->generate(statementListChild, scopedepth);

    instruction_add(B, STRDUP(whileStartBuffer), NULL, 0, 0);

    // Wrong label name
    strcat(whileEndBuffer, ":");
    instruction_add(STRING, STRDUP(whileEndBuffer), NULL, 0, 0);

    tracePrint ( "End WHILE_STATEMENT\n");
}

void gen_FOR_STATEMENT ( node_t *root, int scopedepth )
{
    tracePrint ( "Starting FOR_STATEMENT\n");
    /*
    node_t* assignStatmentChild = root->children[0];
    node_t* expressionChild = root->children[1];
    node_t* statementListChild = root->children[2];

    // For start and end label
    char forStartBuffer[24];
    char forEndBuffer[24];
    char forStartBufferLabel[32];
    sprintf(forStartBuffer, "for_start_label_%d", forCounter);

    // Create correct label name
    strcpy(forStartBufferLabel, forStartBuffer);
    strcat(forStartBufferLabel, ":");
    sprintf(forEndBuffer, "for_end_label_%d", forCounter);
    forCounter++;

    // For start label
    instruction_add(STRING, STRDUP(forStartBufferLabel), NULL, 0, 0);

    assignStatmentChild->generate(assignStatmentChild, scopedepth);
    expressionChild->generate(expressionChild, scopedepth);
    instruction_add(POP, r2, NULL, 0, 0);

    // Load variable value into r2
    instruction_add(LDR, r1, fp, 0, assignStatmentChild->children[0]->entry->stack_offset);
    instruction_add3(SUB, r1, r1, r2);
    instruction_add(MOV, r2, STRDUP("#0"), 0, 0);
    instruction_add(CMP, r1, r2, 0, 0);

    instruction_add(MOVLT, r1, STRDUP("#1"), 0, 0);
    instruction_add(MOVGE, r1, STRDUP("#0"), 0, 0);
    instruction_add(CMP, r1, r2, 0, 0);

    // Jump if counter variable is greater than or equal to expression value
    instruction_add(BEQ, STRDUP(forEndBuffer), NULL, 0, 0);

    // Foor loop body
    statementListChild->generate(statementListChild, scopedepth);

    // Jump back to start of for loop
    instruction_add(B, STRDUP(forStartBuffer), NULL, 0, 0);

    // For end label
    strcat(forEndBuffer, ":");
    instruction_add(STRING, STRDUP(forEndBuffer), NULL, 0, 0);
*/
    tracePrint ( "End FOR_STATEMENT\n");
}

void gen_IF_STATEMENT ( node_t *root, int scopedepth )
{
    tracePrint ( "Starting IF_STATEMENT'\n");

    node_t* expressionChild = root->children[0];
    node_t* statementListThen = root->children[1];
    node_t* statementListElse;

    // Only assign node if else clause exists
    if (root->n_children > 2)
        statementListElse = root->children[2];

    // Create if label
    char ifEndBuffer[50];
    char ifElseBuffer[50];
    sprintf(ifEndBuffer, "if_end_label_%d", ifCounter);
    sprintf(ifElseBuffer, "if_else_label_%d", ifCounter);
    ifCounter++;

    // Evaluate expression
    expressionChild->generate(expressionChild, scopedepth);
    instruction_add(POP, r1, NULL, 0, 0);
    instruction_add(MOV, r2, "#0", 0, 0);
    instruction_add(CMP, r1, r2, 0, 0);

    if (root->n_children > 2)
        instruction_add(BEQ, STRDUP(ifElseBuffer), NULL, 0, 0);
    else
        instruction_add(BEQ, STRDUP(ifEndBuffer), NULL, 0, 0);

    // Generate for true case in expression
    statementListThen->generate(statementListThen, scopedepth);

    // Only generate else code if root has more than 2 children nodes
    if (root->n_children > 2) {
        instruction_add(B, STRDUP(ifEndBuffer), NULL, 0, 0);

        // Else label
        strcat(ifElseBuffer, ":");
        instruction_add(STRING, STRDUP(ifElseBuffer), NULL, 0, 0);
        statementListElse->generate(statementListElse, scopedepth);   
    }

    // Add label at the end of if clause
    strcat(ifEndBuffer, ":");
    instruction_add(STRING, STRDUP(ifEndBuffer), NULL, 0, 0);

    tracePrint ( "End IF_STATEMENT\n");
}



static void
instructions_print ( FILE *stream )
{
    instruction_t *this = start;
    
    while ( this != NULL )
    {
        switch ( this->opcode ) // ARM
        {
            case PUSH:
                fprintf ( stream, "\tpush\t{%s}\n", this->operands[0] );
                break;
                
            case POP:
                fprintf ( stream, "\tpop\t{%s}\n", this->operands[0] );
                break;
                
            case MOVE32:
                fprintf ( stream, "\tmovw\t%s, #:lower16:%s\n",
                          this->operands[0], this->operands[1]
                );
                fprintf ( stream, "\tmovt\t%s, #:upper16:%s\n",
                          this->operands[0], this->operands[1]
                );
                break;
                
            case MOV:
                fprintf ( stream, "\tmov\t%s, %s\n", this->operands[0], this->operands[1] );
                break;
                
                
            case LDR:
                if ( this->offsets[0] == 0 && this->offsets[1] == 0 )
                    fprintf ( stream, "\tldr\t%s, [%s]\n",
                              this->operands[0], this->operands[1]
                    );
                else if ( this->offsets[0] == 0 && this->offsets[1] != 0 )
                    fprintf ( stream, "\tldr\t%s, [%s, #%d]\n", 
                              this->operands[0], this->operands[1], this->offsets[1]
                    );
                else if ( this->offsets[0] != 0 && this->offsets[1] == 0 )
                    fprintf ( stream, "ERROR, LOAD format not correct\n");
                break;
                
            case LOADS:
                if ( this->offsets[0] == 0 && this->offsets[1] == 0 )
                    fprintf ( stream, "\tflds\t%s, [%s]\n",
                              this->operands[1], this->operands[0]
                    );
                else if ( this->offsets[0] != 0 && this->offsets[1] == 0 )
                    fprintf ( stream, "\tflds\t%s, [%s, #%d]\n", 
                              this->operands[1], this->operands[0], this->offsets[0]
                    );
                else if ( this->offsets[0] == 0 && this->offsets[1] != 0 )
                    fprintf ( stream, "ERROR, LOAD format not correct\n");
                break;
                
                
            case STR:
                if ( this->offsets[0] == 0 && this->offsets[1] == 0 )
                    fprintf ( stream, "\tstr\t%s, [%s]\n",
                              this->operands[0], this->operands[1]
                    );
                else if ( this->offsets[1] != 0 && this->offsets[0] == 0 )
                    fprintf ( stream, "\tstr\t%s, [%s, #%d]\n", 
                              this->operands[0], this->operands[1], this->offsets[1]
                    );
                else if ( this->offsets[0] == 0 && this->offsets[1] != 0 )
                    fprintf ( stream, "ERROR, STORE format not correct\n");
                break;
                
            case STORES:
                if ( this->offsets[0] == 0 && this->offsets[1] == 0 )
                    fprintf ( stream, "\tfsts\t%s, [%s]\n",
                              this->operands[0], this->operands[1]
                    );
                else if ( this->offsets[0] != 0 && this->offsets[1] == 0 )
                    fprintf ( stream, "\tfsts\t%s, [%s, #%d]\n", 
                              this->operands[0], this->operands[1], this->offsets[0]
                    );
                else if ( this->offsets[0] == 0 && this->offsets[1] != 0 )
                    fprintf ( stream, "ERROR, STORE format not correct\n");
                break;
                
                
            case MOVES:
                if ( this->offsets[0] == 0 && this->offsets[1] == 0 )
                    fprintf ( stream, "\tmfcpys\t%s, %s\n",
                              this->operands[1], this->operands[0]
                    );
                else if ( this->offsets[0] != 0 && this->offsets[1] == 0 )
                    fprintf ( stream, "\tError: NOT possible for ARM, use load/store\t%d(%s),%s\n",
                              this->offsets[0], this->operands[0], this->operands[1]
                    );
                else if ( this->offsets[0] == 0 && this->offsets[1] != 0 )
                    fprintf ( stream, "\tError: NOT possible for ARM, use load/store\t%s,%d(%s)\n",
                              this->operands[0], this->offsets[1], this->operands[1]
                    );
                break;
                
            case MOVED:
                if ( this->offsets[0] == 0 && this->offsets[1] == 0 )
                    fprintf ( stream, "\tmfcpyd TODO\t%s,%s\n",
                              this->operands[1], this->operands[0]
                    );
                else if ( this->offsets[0] != 0 && this->offsets[1] == 0 )
                    fprintf ( stream, "\tError: NOT possible for ARM, use load/store\t%s, [%s,#%d]\n",  
                              //this->offsets[0], this->operands[0], this->operands[1]   "\ldr\t%d(%s),%s\n",
                              this->operands[1], this->operands[0], this->offsets[0]
                    );
                else if ( this->offsets[0] == 0 && this->offsets[1] != 0 )
                    fprintf ( stream, "\tError: NOT possible for ARM, use load/store\t%s,%d(%s)\n",
                              this->operands[0], this->offsets[1], this->operands[1]
                    );
                break;
                
            case CVTSD:
                if ( this->offsets[0] == 0 && this->offsets[1] == 0 )
                    fprintf ( stream, "\tfcvtds\t%s,%s\n",
                              this->operands[1], this->operands[0]
                    );
                else if ( this->offsets[0] != 0 && this->offsets[1] == 0 )
                    fprintf ( stream, "\tfcvtds TODO\t%d(%s),%s\n",
                              this->offsets[0], this->operands[0], this->operands[1]
                    );
                else if ( this->offsets[0] == 0 && this->offsets[1] != 0 )
                    fprintf ( stream, "\tfcvtds TODO\t%s,%d(%s)\n",
                              this->operands[0], this->offsets[1], this->operands[1]
                    );
                break;
                
                
                
            case ADD:
                if ( this->operands[2] == NULL){
                    //Legacy support
                    fprintf ( stream, "\tadd\t%s, %s\n",
                              this->operands[1], this->operands[0]
                    );
                }
                else{
                    fprintf ( stream, "\tadd\t%s, %s, %s\n",
                              this->operands[0], this->operands[1], this->operands[2]
                    );
                }
                break;
                
            case FADD:
                if ( this->offsets[0] == 0 && this->offsets[1] == 0 )
                    fprintf ( stream, "\tfadds\t%s, %s, %s\n",
                              this->operands[1], this->operands[1], this->operands[0]
                    );
                break;
                
            case SUB:
                if ( this->operands[2] == NULL )
                    fprintf ( stream, "\tsub\t%s, %s\n",
                              this->operands[1], this->operands[0]
                    );
                else{
                    fprintf ( stream, "\tsub\t%s, %s, %s\n",
                              this->operands[0], this->operands[1], this->operands[2]
                    );
                }
                break;
                
            case FSUB:
                if ( this->offsets[0] == 0 && this->offsets[1] == 0 )
                    fprintf ( stream, "\tfsubs\t%s, %s, %s\n",
                              this->operands[1], this->operands[1], this->operands[0]
                    );
                else
                    fprintf ( stream, "Not supported...\tfsub\t%s, %s\n",
                              this->operands[1], this->operands[0]
                    );
                break;
                
            case MUL:
                fprintf(stream, "\tmul\t%s,%s,%s\n",
                        this->operands[0], this->operands[1], this->operands[2]);
                
                break;
            case FMUL:
                if ( this->offsets[0] == 0 )
                    fprintf ( stream, "\tfmuls\t %s, %s, %s\n", this->operands[1], this->operands[1], this->operands[0] ); 
                else
                    fprintf ( stream, "Not supported...\tfmul\t%d(%s)\n",
                              this->offsets[0], this->operands[0]
                    );
                break;
            case DIV:
                
                fprintf ( stream, "\tsdiv\t%s, %s, %s\n",
                          this->operands[0], this->operands[1], this->operands[2] );
                
                break;
            case FDIV:
                if ( this->offsets[0] == 0 &&  this->operands[1] == NULL)
                    fprintf ( stream, "\tfdivs\ts0, s0, %s\n", this->operands[0] );
                else  if ( this->offsets[0] == 0)
                    fprintf ( stream, "\tfdivs\t%s, %s, %s\n", this->operands[1], this->operands[1], this->operands[0] );
                else
                    fprintf ( stream, "\tidivl TODO\t%d(%s)\n",
                              this->offsets[0], this->operands[0]
                    );
                break;
            case NEG:
                fprintf ( stream, "\tneg\t%s, %s\n",
                          this->operands[0], this->operands[1] );
                break;
            case FNEG:
                fprintf ( stream, "\tfnegs\t%s, %s\n",
                          this->operands[0], this->operands[1] );
                break;
            case CMP:
                if ( this->offsets[0] == 0 && this->offsets[1] == 0 )
                    fprintf ( stream, "\tcmp\t%s,%s\n",
                              this->operands[0], this->operands[1]
                    );
                break;
            case FCMP:
                fprintf( stream, "\tfcmps\t%s,%s\n", this->operands[0], this->operands[1]);
                fprintf( stream, "\tvmrs APSR_nzcv, FPSCR\n");
                break;
                
            case MOVGT:
                fprintf(stream, "\tmovgt\t %s, %s\n", this->operands[0], this->operands[1]);
                break;
            case MOVGE:
                fprintf(stream, "\tmovge\t %s, %s\n", this->operands[0], this->operands[1]);
                break;
            case MOVLT:
                fprintf(stream, "\tmovlt\t %s, %s\n", this->operands[0], this->operands[1]);
                break;
            case MOVLE:
                fprintf(stream, "\tmovle\t %s, %s\n", this->operands[0], this->operands[1]);
                break;
            case MOVEQ:
                fprintf(stream, "\tmoveq\t %s, %s\n", this->operands[0], this->operands[1]);
                break;
            case MOVNE:
                fprintf(stream, "\tmovne\t %s, %s\n", this->operands[0], this->operands[1]);
                break;
                
            case BL:
                fprintf ( stream, "\tbl\t" );
                fprintf ( stream, "%s\n", this->operands[0] );
                break;
            case LABEL: 
                fprintf ( stream, "_%s:\n", this->operands[0] );
                break;
                
            case B:
                fprintf ( stream, "\tb\t%s\n", this->operands[0] );
                break;
                
            case BEQ:
                fprintf ( stream, "\tbeq\t%s\n", this->operands[0] );
                break;
            case BNE:
                fprintf ( stream, "\tbne\t%s\n", this->operands[0] );
                break;
                
            case STRING:
                fprintf ( stream, "%s\n", this->operands[0] );
                break;
                
            case COMMMENT:
                fprintf ( stream, "#%s", this->operands[0] );
                break;
                
            case NIL:
                break;
                
            default:
                fprintf ( stderr, "Error in instruction stream\n" );
                break;
        }
        this = this->next;
    }
}

void print_start(){
    // Start of assemlby program
    // Debug functions and system call wrappers
    instruction_add ( STRING,       STRDUP("debugprint:"), NULL, 0, 0 );
    instruction_add ( STRING,       STRDUP("\tpush {r0-r11, lr}"), NULL, 0, 0 );
    instruction_add ( STRING,       STRDUP("\tmovw	r0, #:lower16:.DEBUG"), NULL, 0, 0 );
    instruction_add ( STRING,       STRDUP("\tmovt	r0, #:upper16:.DEBUG"), NULL, 0, 0 );
    instruction_add ( BL, STRDUP("printf"), NULL, 0, 0 );
    instruction_add ( STRING,       STRDUP("\tpop {r0-r11, pc}"), NULL, 0, 0 );
    instruction_add ( STRING,       STRDUP("debugprint_r0:"), NULL, 0, 0 );
    instruction_add ( STRING,       STRDUP("\tpush {r0-r11, lr}"), NULL, 0, 0 );
    instruction_add ( MOV,         r1, r0, 0, 0 );
    instruction_add ( STRING,       STRDUP("\tmovw	r0, #:lower16:.DEBUGINT"), NULL, 0, 0 );
    instruction_add ( STRING,       STRDUP("\tmovt	r0, #:upper16:.DEBUGINT"), NULL, 0, 0 );
    instruction_add ( BL, STRDUP("printf"), NULL, 0, 0 );
    instruction_add ( STRING,       STRDUP("\tpop {r0-r11, pc}"), NULL, 0, 0 );
    instruction_add ( STRING,       STRDUP("_malloc:"), NULL, 0, 0 );
    instruction_add ( PUSH,			lr, NULL, 0,0);
    instruction_add ( PUSH,			fp, NULL, 0,0);
    instruction_add ( LDR,          r0, sp, 0, 8 );
    instruction_add ( BL, STRDUP("malloc"), NULL, 0, 0 );
    instruction_add ( POP, fp, NULL, 0,0);
    instruction_add ( STRING,       STRDUP("\tpop {pc}"), NULL, 0, 0 );
    
    // Setting up command line arguments
    instruction_add ( STRING,       STRDUP("main:"), NULL, 0, 0 );
    instruction_add ( PUSH,         lr, NULL, 0, 0 );
    instruction_add ( PUSH,         fp, NULL, 0, 0 );
    instruction_add ( MOV,         fp, sp, 0, 0 );
    instruction_add ( MOV,         r5, r0, 0, 0 );
    instruction_add3 ( SUB,         r5,r5, "#1" );
    instruction_add ( CMP, r5, "#0", 0,0);
    instruction_add ( BEQ,     STRDUP("noargs"), NULL, 0, 0 );
    instruction_add ( MOV,         r6, r1, 0, 0 );
    instruction_add ( STRING,       STRDUP("pusharg:"), NULL, 0, 0 );
    instruction_add( LDR, r0, r6, 0, 4);
    instruction_add3 ( ADD,          r6,r6,STRDUP("#4"));
    instruction_add ( MOV,         r1, STRDUP("#0"), 0, 0 );
    instruction_add ( MOV,         r2, STRDUP("#10"), 0, 0 );
    instruction_add ( BL,      STRDUP("strtol"), NULL, 0, 0 );
    instruction_add ( PUSH,         r0, NULL, 0, 0 );
    instruction_add3 ( SUB,         r5,r5, "#1" );
    instruction_add ( CMP, r5, "#0", 0,0);
    instruction_add ( BNE,     STRDUP("pusharg"), NULL, 0, 0 );
    instruction_add ( STRING,       STRDUP("noargs:"), NULL, 0, 0 );
}

void print_end(){
    instruction_add ( MOV,         sp, fp, 0, 0 );
    instruction_add ( POP,          fp, NULL, 0, 0 );
    instruction_add ( BL, STRDUP("exit"), NULL, 0, 0 );
    instruction_add ( STRING,  STRDUP(".end"), NULL, 0, 0 );
}


#include "assignfunctions.h"
#include "bindnames.h"
#include "typecheck.h"
#include "optimizenodes.h"

/* Assign nodes functions according to their type */
/* Version with simplify tree and bind names */
void assignFunctionsToNodes ( node_t *root )
{
	if ( root == NULL )
		return;

	// Recursively assign the functions of the children of the current node
	for ( int i=0; i<root->n_children; i++ ){
		assignFunctionsToNodes ( root->children[i] );
	}
	
	// Here we assign the correct functions used by each node for generate.
	switch ( root->nodetype.index )
	{
		case PROGRAM: 
			root->generate = gen_PROGRAM;
			break;

		case FUNCTION: 
			root->generate = gen_FUNCTION;
			break;
		case DECLARATION_STATEMENT:
			root->generate = gen_DECLARATION_STATEMENT;
			break;
		case PRINT_STATEMENT:
			root->generate = gen_PRINT_STATEMENT;
			break;
		case EXPRESSION: 
			root->generate = gen_EXPRESSION;
			break;
		case VARIABLE: 
			root->generate = gen_VARIABLE;
			break;
		case CONSTANT:
			root->generate = gen_CONSTANT;
			break;
		case ASSIGNMENT_STATEMENT: 
			root->generate = gen_ASSIGNMENT_STATEMENT;
			break;
		case RETURN_STATEMENT: 
			root->generate = gen_RETURN_STATEMENT;
			break;
                case WHILE_STATEMENT: 
                        root->generate = gen_WHILE_STATEMENT;
                        break;
                case FOR_STATEMENT: 
                        root->generate = gen_FOR_STATEMENT;
                        break;
                case IF_STATEMENT: 
                        root->generate = gen_IF_STATEMENT;
                        break;

		
		default:
			root->generate = gen_default;
			break;
	}
	
	
	// Here we assign the correct functions used by each node for bind names.
	switch ( root->nodetype.index )
	{
		case FUNCTION_LIST: 
			root->bind_names = bind_function_list;
			break;
		case FUNCTION: 
			root->bind_names = bind_function;
			break;
		case DECLARATION_STATEMENT:
			root->bind_names = bind_declaration;
			break;
		case CONSTANT:
			root->bind_names = bind_constant;
			break;
		case VARIABLE:
			root->bind_names = bind_variable;
			break;
		case EXPRESSION:
			root->bind_names = bind_expression;
			break;
		default:
			root->bind_names = bind_default;
			break;
	}

	// Here we assign the correct functions used by each node for simplify tree.
	switch ( root->nodetype.index )
	{
		// The first child variable is the function name. Function can hold it itself.
		case FUNCTION:
			root->simplify =simplify_function;
			break;
		
		// These are lists which needs to be flattened. Their structure
		// is the same, so they can be treated the same way.
		case STATEMENT_LIST:
		case EXPRESSION_LIST: case VARIABLE_LIST: case INDEX_LIST:
			root->simplify = simplify_list;
			break;

		// Declaration lists and function lists should also be flattened, but their structure is slightly
		// different, so they need their own case
		case FUNCTION_LIST:
			root->simplify = simplify_list_with_null;
			break;
		
		// Declaration statements should contain their variable and type
		case DECLARATION_STATEMENT:
			root->simplify = simplify_declaration_statement;
			break;

		// These have only one child, so they are not needed
		case STATEMENT: case PARAMETER_LIST: case ARGUMENT_LIST:
			root->simplify = simplify_single_child;
			break;
		
		// Some types can be compacted, ARRAY and CLASS...
		case TYPE:
			root->simplify = simplify_types;
			break;

		// Expressions where both children are integers can be evaluated (and replaced with
		// integer nodes). Expressions with just one child can be removed (like statements etc above)
		case EXPRESSION:
			root->simplify = simplify_expression;
			break;

        		
		default:
			root->simplify = simplify_default;
			break;
	}

	// Assigning functions for type checking

	switch( root->nodetype.index )
	{
		case EXPRESSION:
			root->typecheck = typecheck_expression;
			break;
		case ASSIGNMENT_STATEMENT:
			root->typecheck = typecheck_assignment;
			break;
		case VARIABLE:
			root->typecheck = typecheck_variable;
			break;
		default:
			root->typecheck = typecheck_default;
			break;
	}

}



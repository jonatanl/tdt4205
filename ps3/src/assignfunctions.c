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
	
	
	
	
	// Here we assign the correct functions used by each node for bind names.
	switch ( root->nodetype.index )
	{
		case CONSTANT:
			root->bind_names = bind_constant;
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
}



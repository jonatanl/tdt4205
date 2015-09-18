#include "bindnames.h"
extern int outputStage; // This variable is located in vslc.c
char* thisClass;

//Solutions to last assignment, precompiled in bindsol.o
int bc(node_t* root, int stackOffset);
int bd(node_t* root, int stackOffset);

int bind_default ( node_t *root, int stackOffset)
{
	return bd(root, stackOffset);
}

int bind_function ( node_t *root, int stackOffset)
{
	if(outputStage == 6)
		printf( "FUNCTION: Start: %s\n", root->label);
	scope_add();

	node_t *child;
	node_t *parameterListChild = root->children[0];
	node_t *statementListChild = root->children[1];
	// Calculate start offset
	int startStackOffset;

	if (parameterListChild != NULL) {
		int numberOfArguments = parameterListChild->n_children;	
		startStackOffset = 8 + 4 * (numberOfArguments - 1);	

		// Bind all parameter children
		for (int i = 0; i < numberOfArguments; ++i) {
			child = parameterListChild->children[i];
			child->bind_names(child, startStackOffset - 4 * i);
		}
	}

	int numberOfStatements = statementListChild->n_children;
	// Declarations start the stack offset on -4
	stackOffset = -4;

	// Bind all statement children
	for (int i = 0; i < numberOfStatements; ++i) {
		child = statementListChild->children[i];
 
		stackOffset = child->bind_names(child, stackOffset);
	}

	scope_remove();
	if(outputStage == 6)
		printf( "FUNCTION: End\n");

	return stackOffset;
}

function_symbol_t* create_function_symbol(node_t* function_node)
{
	// Memory allocate and set function fields
	function_symbol_t *function = malloc(sizeof(function_symbol_t));
	function->label = STRDUP(function_node->label);
	function->return_type = function_node->data_type;

	node_t *argumentListChild = function_node->children[0];
	int numberOfArguments = 0; 

	// Argument list child may be null
	if (argumentListChild != NULL) {
		numberOfArguments = argumentListChild->n_children;
		data_type_t *argumentTypeList = malloc(sizeof(data_type_t) * numberOfArguments);

		// Add elements to arguments type array
		for (int i = 0; i < numberOfArguments; ++i)	{
			argumentTypeList[i] = argumentListChild->children[i]->data_type;
		}

		// Add data to symbol entry
		function->argument_types = argumentTypeList;
	}

	// Add number of arguments to function
	function->nArguments = numberOfArguments;
    return function;
}

int bind_function_list ( node_t *root, int stackOffset)
{
	if(outputStage == 6)
		printf( "FUNCTION_LIST: Start\n");

	scope_add();

	node_t *child;
	function_symbol_t *symbol;
	int numberOfChildren = root->n_children;

	// Create symbol table for each function
	for (int i = 0; i < numberOfChildren; ++i) {
		child = root->children[i];
		symbol = create_function_symbol(child);
		function_add(symbol->label, symbol);
	}

	// Bind all function list children
	for (int i = 0; i < numberOfChildren; ++i) {
		child = root->children[i];
		child->bind_names(child, stackOffset);
	}

	scope_remove();

	if(outputStage == 6)
		printf( "FUNCTION_LIST: End\n");

	return 0;
}

int bind_constant ( node_t *root, int stackOffset)
{
    return bc(root, stackOffset);
}

symbol_t* create_symbol(node_t* declaration_node, int stackOffset)
{
	// Create new symbol entry
	symbol_t *symbolEntry = malloc(sizeof(symbol_t));
	symbolEntry->stack_offset = stackOffset;
	symbolEntry->label = STRDUP(declaration_node->label);
	symbolEntry->type = declaration_node->data_type;

    return symbolEntry;
}

// Variable declaration
int bind_declaration ( node_t *root, int stackOffset)
{
	if(outputStage == 6)
		printf( "DECLARATION: parameter/variable : '%s', offset: %d\n", root->label, stackOffset);

	// Insert variable to hash map
	symbol_t *symbolEntry = create_symbol(root, stackOffset);
	symbol_insert(symbolEntry->label, symbolEntry);
	stackOffset -= 4;
	
	return stackOffset;
}

// Variable usage
int bind_variable ( node_t *root, int stackOffset)
{
	if(outputStage == 6)
		printf( "VARIABLE: access: %s\n", root->label);

	// Retrieve variable
	symbol_t *symbolEntry = symbol_get(root->label);
	root->entry = symbolEntry;

	return stackOffset;
}

int bind_expression( node_t* root, int stackOffset)
{
	if(outputStage == 6)
		printf( "EXPRESSION: Start: %s\n", root->expression_type.text);

	node_t *child;

	// Retrieve function entry if the node is a function call
	if (root->expression_type.index == FUNC_CALL_E) {
		// Set function entry
		function_symbol_t *functionEntry = function_get(root->children[0]->label);
		root->function_entry = functionEntry;
		
		// Bind all parameter children
		node_t *parameterListChild = root->children[1];
		if (parameterListChild != NULL)	{
			int numberOfParameters = parameterListChild->n_children;

			for (int i = 0; i < numberOfParameters; ++i) {
				child = parameterListChild->children[i];
				child->bind_names(child, stackOffset);
			}	
		}
	} else {
		int numberOfChildren = root->n_children;

		// Bind all children
		for (int i = 0; i < numberOfChildren; ++i) {
			child = root->children[i];
			if (child != NULL) {
				child->bind_names(child, stackOffset);			
			}
		}	
	}

	if(outputStage == 6)
		printf( "EXPRESSION: End\n");

	return stackOffset;
}

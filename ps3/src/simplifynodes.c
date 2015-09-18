#include "simplifynodes.h"

extern int outputStage; // This variable is located in vslc.c

Node_t* simplify_default ( Node_t *root, int depth )
{
	int numberOfChildren = root->n_children;
	Node_t *child;

	// Call nodes recursevly
	for (int i = 0; i < numberOfChildren; ++i) {
		child = root->children[i];
		if (child != NULL) {
			child->simplify(child, depth + 1);			
		}
	}

	return NULL;
}


Node_t *simplify_types ( Node_t *root, int depth )
{
	if(outputStage == 4)
		printf( "%*cSimplify %s \n", depth, ' ', root->nodetype.text );

	int numberOfChildren = root->n_children;
	Node_t *child;

	// Simplify all children
	for (int i = 0; i < numberOfChildren; ++i) {
		child = root->children[i];
		if (child != NULL){
			child->simplify(child, depth + 1);
		}
	}

	// Change array nodes
	if (root->data_type.base_type == ARRAY_TYPE) {
		child = root->children[0];
		root->data_type.array_type = child->data_type.base_type;	

		Node_t *indexChild = root->children[1];
		int dimensions = indexChild->n_children;

		root->data_type.n_dimensions = dimensions;
		int* dimensionsArray = malloc(sizeof(int*) * dimensions);

		for (int i = 0; i < dimensions; ++i){
				dimensionsArray[i] = indexChild->children[i]->int_const;
		}	
		root->data_type.dimensions = dimensionsArray;

		// Free all the children
		free(child);
		free(indexChild);
		free(root->children);
		root->n_children = 0;
	}

	return NULL;
}


Node_t *simplify_function ( Node_t *root, int depth )
{
	if(outputStage == 4)
		printf( "%*cSimplify %s \n", depth, ' ', root->nodetype.text );

	int numberOfChildren = root->n_children;

	// Simplify all children
	Node_t *child;
	for (int i = 0; i < numberOfChildren; ++i) {
		child = root->children[i];
		if (child != NULL) {
			child->simplify(child, depth + 1);
		}
	}

	child = root->children[0];
	root->data_type = child->data_type;

	child = root->children[1];
	root->label = STRDUP(child->label);

	Node_t **children = malloc(sizeof(Node_t*) * 2);

	children[0] = root->children[2];
	children[1] = root->children[3];

	// Free old children
	free(root->children[0]);
	free(root->children[1]);
	free(root->children);

	root->n_children = 2;
	root->children = children;


	return NULL;
}

Node_t *simplify_declaration_statement ( Node_t *root, int depth )
{
	if(outputStage == 4)
		printf( "%*cSimplify %s \n", depth, ' ', root->nodetype.text );

	int numberOfChildren = root->n_children;
	Node_t *child;

	// Simplify all children
	for (int i = 0; i < numberOfChildren; ++i) {
		child = root->children[i];
		if (child != NULL) {
			child->simplify(child, depth + 1);
		}
	}

	child = root->children[0];
	root->data_type = child->data_type;

	child = root->children[1];
	root->label = STRDUP(child->label);

	// Free old children
	free(root->children[0]);
	free(root->children[1]);
	free(root->children);
	root->n_children = 0;

	return NULL;
}


Node_t *simplify_single_child ( Node_t *root, int depth )
{
	if(outputStage == 4)
		printf( "%*cSimplify %s \n", depth, ' ', root->nodetype.text );

	int numberOfChildren = root->n_children;
	Node_t *child;

	// Simplify all children
	for (int i = 0; i < numberOfChildren; ++i) {
		child = root->children[i];
		if (child != NULL) {
			child->simplify(child, depth + 1);
		}
	}

	child = root->children[0];
	if (child == NULL)
		return NULL;

	root = child;

	return NULL;
}

Node_t *simplify_list_with_null ( Node_t *root, int depth )
{
	if(outputStage == 4)
		printf( "%*cSimplify %s \n", depth, ' ', root->nodetype.text );

	int numberOfChildren = root->n_children;

	// Simplify all children
	Node_t *child;
	for (int i = 0; i < numberOfChildren; ++i) {
		child = root->children[i];
		if (child != NULL) {
			child->simplify(child, depth + 1);
		}
	}

	child = root->children[0];
	if (child == NULL) {
		Node_t **children = malloc(sizeof(Node_t*));
		children[0] = root->children[1];

		free(root->children[0]);
		free(root->children);
		root->children = children;
		root->n_children = 1;
	} else {
		int newNumberOfChildren = numberOfChildren + child->n_children - 1;
		Node_t **children = malloc(sizeof(Node_t*) * newNumberOfChildren);
		children[newNumberOfChildren - 1] = root->children[1];

		for (int i = 0; i < child->n_children; ++i) {
			children[i] = child->children[i];
		}

		free(root->children[0]);
		free(root->children);
		root->children = children;
		root->n_children = numberOfChildren + child->n_children - 1;
	}

	return NULL;
}


Node_t *simplify_list ( Node_t *root, int depth )
{
	if(outputStage == 4)
		printf( "%*cSimplify %s \n", depth, ' ', root->nodetype.text );

	int numberOfChildren = root->n_children;

	// Simplify all children
	Node_t *child;
	for (int i = 0; i < numberOfChildren; ++i) {
		child = root->children[i];
		if (child != NULL) {
			child->simplify(child, depth + 1);
		}
	}

	// Do nothing if number of children equals 1
	if (numberOfChildren == 1) {
		return NULL;
	}

	child = root->children[0];
	int newNumberOfChildren = numberOfChildren + child->n_children - 1;
	Node_t **children = malloc(sizeof(Node_t*) * (newNumberOfChildren));

	// Move all the children up to the parent node
	children[newNumberOfChildren - 1] = root->children[1];
	for (int i = 0; i < child->n_children; ++i) {
		children[i] = child->children[i];
	}
	
	free(root->children[0]);
	free(root->children);
	root->children = children;
	root->n_children = newNumberOfChildren;

	return NULL;
}


Node_t *simplify_expression ( Node_t *root, int depth )
{
	if(outputStage == 4)
		printf( "%*cSimplify %s (%s) \n", depth, ' ', root->nodetype.text, root->expression_type.text );

	int numberOfChildren = root->n_children;

	// Simplify all children
	Node_t *child;
	for (int i = 0; i < numberOfChildren; ++i) {
		child = root->children[i];
		if (child != NULL) {
			child->simplify(child, depth + 1);
		}
	}

	if (numberOfChildren == 1) {
		child = root->children[0];
		root = child;
	}

	return NULL;
}

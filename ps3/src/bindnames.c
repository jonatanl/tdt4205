#include "bindnames.h"
extern int outputStage; // This variable is located in vslc.c
char* thisClass;

int bind_default ( node_t *root, int stackOffset)
{
	node_t *child;
	int numberOfChildren = root->n_children;

	for (int i = 0; i < numberOfChildren; ++i) {
		child = root->children[i];
		if (child != NULL)
			child->bind_names(child, 0);
	}

	return 0;
}



int bind_constant ( node_t *root, int stackOffset)
{
	if(outputStage == 6)
		printf( "CONSTANT\n");

	if (root->data_type.base_type == STRING_TYPE) {
		int index = strings_add(STRDUP(root->string_const));
		root->string_index = index;
	}

	return 0;
}






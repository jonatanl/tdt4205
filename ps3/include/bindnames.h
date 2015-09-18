#include <stdint.h>
#include "tree.h"

int bind_names_smart ( node_t *root, int stackOffset);

int bind_default ( node_t *root, int stackOffset);
int bind_function ( node_t *root, int stackOffset);
int bind_function_list ( node_t *root, int stackOffset);
int bind_constant ( node_t *root, int stackOffset);
int bind_declaration ( node_t *root, int stackOffset);
int bind_variable ( node_t *root, int stackOffset);
int bind_expression( node_t* root, int stackOffset);



#ifndef TYPECHECK
#define TYPECHECK

#include "tree.h"

int has_type_errors();
void type_error(node_t* root);
data_type_t typecheck_default(node_t* root);
data_type_t typecheck_expression(node_t* root);
data_type_t typecheck_assignment(node_t* root);
data_type_t typecheck_variable(node_t* root);

#endif

#include "typecheck.h"
extern int outputStage;

static int type_errors = 0;


int isNumber(data_type_t type);

int has_type_errors(){
	return type_errors;
}

void type_error(node_t* root){
        fprintf(stdout, "Type error at:\n");
        if(root != NULL){
                fprintf(stdout,"%s", root->nodetype.text);
                if(root->nodetype.index == EXPRESSION){
                        fprintf(stdout," (%s)", root->expression_type.text);
                }
                fprintf(stdout,"\n");
        }
        type_errors++;
}

int equal_types(data_type_t a, data_type_t b){

	if(a.base_type == INT_TYPE || a.base_type == FLOAT_TYPE || a.base_type == BOOL_TYPE || a.base_type == STRING_TYPE){
		return a.base_type == b.base_type;
	}
	else if(a.base_type == ARRAY_TYPE){
		int equals = b.base_type == ARRAY_TYPE;
		equals = equals && (a.array_type == b.array_type);
		equals = equals && (a.n_dimensions == b.n_dimensions);
		if(!equals){
			return equals;
		}
		for(int i = 0; i < a.n_dimensions; i++){
			equals = equals && (a.dimensions[i] == b.dimensions[i]);
		}

		return equals;
	}
	else{
		return 0;
	}
}

data_type_t typecheck_default(node_t* root)
{
    node_t *child;
    int numberOfChildren = root->n_children;

    // Check types off all nodes recursively
    for (int i = 0; i < numberOfChildren; ++i) {
        child = root->children[i];
        if(child != NULL)
            child->typecheck(child);
    }

    return root->data_type;
}

data_type_t typecheck_expression(node_t* root)
{    
	if(outputStage == 10)
		printf( "Type checking expression %s\n", root->expression_type.text);


    if(root->n_children == 0){
        return root->data_type;

    } else if(root->n_children == 1) {
        node_t *child;
        child = root->children[0];
        data_type_t childType;

        // Only typecheck not null children
        if (child != NULL)
            childType = child->typecheck(child);
        else
            return root->data_type;

        switch(root->expression_type.index){
            case UMINUS_E:
                if (!isNumber(childType))
                    type_error(root);
                else
                    return childType;
                break;
                
            case NOT_E:
                if (!equal_types(childType, (data_type_t){.base_type = BOOL_TYPE}))
                    type_error(root);
                else
                    return (data_type_t){.base_type = BOOL_TYPE};
                break;
                
            default:
                break;
        }
    } else if(root->n_children > 1) {
        node_t *firstChild = root->children[0];
        node_t *secondChild = root->children[1];
        data_type_t firstChildType;
        data_type_t secondChildType;
        node_t *expressionListChild;

        // Only typecheck not null children
        if (firstChild != NULL && firstChild->expression_type.index != FUNC_CALL_E)
            firstChildType = firstChild->typecheck(firstChild);
        else
            return root->data_type;

        // Only typecheck not null children
        if (secondChild != NULL)
            secondChildType = secondChild->typecheck(secondChild);
        else
            return root->data_type;

        switch(root->expression_type.index) {
            case ADD_E: case SUB_E: case DIV_E: case MUL_E:
                if (!equal_types(firstChildType, secondChildType))
                    type_error(root);
                else
                    return firstChildType;

                break;
                    
            case  LEQUAL_E: case GEQUAL_E: case GREATER_E: case LESS_E:
                if (!equal_types(firstChildType, secondChildType))
                    type_error(root);
                else
                    return (data_type_t){.base_type = BOOL_TYPE};

                break;
                    
            case AND_E: case OR_E:
                if (!equal_types(firstChildType, secondChildType))
                    type_error(root);
                else
                    return (data_type_t){.base_type = BOOL_TYPE};

                break;
                
            case EQUAL_E: case NEQUAL_E:
                if (!equal_types(firstChildType, secondChildType))
                    type_error(root);
                else
                    return (data_type_t){.base_type = BOOL_TYPE};

                break;
                    
            case FUNC_CALL_E: 
                expressionListChild = root->children[1];
                int numberOfArguments = expressionListChild->n_children;

                // Wrong number of arguments
                if (numberOfArguments != root->function_entry->nArguments)
                    type_error(root);

                // Check that every argument is correct type
                //for (int i = 0; i < numberOfArguments; ++i) {
                //    if (!equal_types(expressionListChild->children[i]->data_type, root->function_entry->argument_types[i]))
               //         type_error(root);
               // } No idea why this doesn't work

                return root->function_entry->return_type;
                break;
            
            case ARRAY_INDEX_E:
                break;
            
            default:
                break;
        }
    }

    return root->data_type;
}

data_type_t typecheck_variable(node_t* root){
    if (root->entry != NULL)
        return root->entry->type;
    else 
        return root->data_type;
}

data_type_t typecheck_assignment(node_t* root)
{
	if(outputStage == 10){
		printf( "Type checking assignment\n");
	}
    node_t *leftChild = root->children[0];
    node_t *rightChild = root->children[1];

    // Type check both children
    leftChild->data_type = leftChild->typecheck(leftChild);
    rightChild->data_type = rightChild->typecheck(rightChild);


    if (!equal_types(leftChild->data_type, rightChild->data_type))
        type_error(root);

    return root->data_type;
}

// Check if a type is float or int
int isNumber(data_type_t type){
    if (type.base_type == INT_TYPE || type.base_type == FLOAT_TYPE)
        return 1;
    else
        return 0;
}
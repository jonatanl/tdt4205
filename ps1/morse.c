#include <stdio.h>
#include <stdlib.h>

// Struct for tree nodes
typedef struct Node{
    char label;
    struct Node* dash;
    struct Node* dot;
} Node;

// Struct for translator
typedef struct Translator{
    Node* tree;
    Node* position;   
} Translator;

// Create Morse tree
Node* create_tree(){
    Node* root = malloc(sizeof(Node));
    root->label = ' ';
    
    //ASCII A is 65
    Node** nodes = malloc(sizeof(Node*)*(26+65));
    for(int i = 65; i < 26+65; i++){
        nodes[i] = malloc(sizeof(Node));
        nodes[i]->label = i;
        nodes[i]->dash = NULL;
        nodes[i]->dot = NULL;
    }
    
    root->dash = nodes['T'];
    root->dot = nodes['E'];
    
    nodes['T']->dash = nodes['M'];
    nodes['T']->dot =  nodes['N'];
    
    nodes['E']->dash = nodes['A'];
    nodes['E']->dot =  nodes['I'];
    
    nodes['M']->dash = nodes['O'];
    nodes['M']->dot =  nodes['G'];
    
    nodes['N']->dash = nodes['K'];
    nodes['N']->dot =  nodes['D'];
    
    nodes['A']->dash = nodes['W'];
    nodes['A']->dot =  nodes['R'];
    
    nodes['I']->dash = nodes['U'];
    nodes['I']->dot =  nodes['S'];
    
    nodes['G']->dash = nodes['Q'];
    nodes['G']->dot =  nodes['Z'];
    
    nodes['K']->dash = nodes['Y'];
    nodes['K']->dot =  nodes['C'];
    
    nodes['D']->dash = nodes['X'];
    nodes['D']->dot =  nodes['B'];
    
    nodes['W']->dash = nodes['J'];
    nodes['W']->dot =  nodes['P'];
    
    nodes['R']->dot =  nodes['L'];
    
    nodes['U']->dot =  nodes['F'];
    
    nodes['S']->dash = nodes['V'];
    nodes['S']->dot =  nodes['H'];
    
    free(nodes);
    
    return root;
}

// Create new translator
Translator* new_translator(){    
    Node* root = create_tree();

    Translator* translator = (Translator*) malloc(sizeof(Translator));
    translator->tree = root;
    translator->position = root;

    return translator;
}

// Move to new possition in tree, print letter if apropriate
void translate(Translator* translator, int c){
    if (c == '-') {
        translator->position = translator->position->dash;
    } else if(c == '.') {
        translator->position = translator->position->dot;
    } else {
        printf("%c", translator->position->label);
        translator->position = translator->tree;
    }
}

void freeNode(Node* node){
    if (node->dash != NULL){
        freeNode(node->dash);
    } else if (node->dot != NULL){
        freeNode(node->dot);
    }
    free(node);
}

// Deallocate translator and tree, create aditional helper functions if needed
void free_translator(Translator* translator){
    Node* root = translator->tree;
    free(translator);
    freeNode(root);
}     

int main(int argc, char** argv){
    // Create translator
    Translator* translator = new_translator();
    // Read characters one by one
    int c;
    c = getchar();
    while(c != EOF){
        // Pass dots, dashes and spaces on to the translator
        if(c == ' ' || c == '.' || c == '-'){
            translate(translator, c);
        }
        c = getchar();
    }
    printf("\n");
    
    //Deallocate translator
    free_translator(translator);
}
    


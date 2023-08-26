%{
#include<stdio.h>
int num_count=0,op_count=0;
%}

%%
[0-9]+    { /* Numerals */
              num_count++;
           }
[-+*/%=<>!&|^~]   { /* Operators */
                       op_count++;
                   }
.|\n       ; /* Ignore other characters */
%%

int main() {
    FILE* input_file = fopen("in.c", "r");
    
    if (!input_file) {
        fprintf(stderr, "Unable to open input file\n");
        return 1;
    }
    
    yyin = input_file;
    
    yylex();
    
    fclose(input_file);
    
    printf("Number of Numerals: %d\n", num_count);
    printf("Number of Operators: %d\n", op_count);
    
    return 0;
}
 int yywrap(){
	return 1;
}

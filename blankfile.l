%{
#include <stdio.h>
%}

%%
[ \t]+   {}
[\n]+   {}
.   { fprintf(yyout, "%c", yytext[0]); }   
%%

int main() {
    FILE* input = fopen("input.txt", "r");
    if (!input) {
        printf("Unable to open input file\n");
        return 1;
    }

    FILE* output = fopen("output.txt", "w");
    if (!output) {
        printf("Unable to open output file\n");
        fclose(input);
        return 1;
    }

    yyin = input;
    yyout = output;
    yylex();

    fclose(input);
    fclose(output);

    return 0;
}

int yywrap(){
	return 1;
}

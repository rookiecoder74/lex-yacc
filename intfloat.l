%{
    #include <stdio.h>
%}

%%
[-+]?[0-9]+ {
    printf("Integer");
}

[-+]?[0-9]+\.[0-9]+ {
    printf("Float");
}

.+ {
    printf("Incorrect");
}
%%

int main() {
    printf("Enter a number: ");
    yylex();
}

int yywrap() {
    return 1;
}

%{
#include <stdio.h>
#include <math.h>
%}

%%

[0-9]+\.[0-9]+   { printf("%d\n", (int)(atof(yytext) + 0.5)); }

%%

int main() {
    printf("Enter a float number: ");
    yylex();
    return 0;
}
int yywrap()
{
return 1;
}

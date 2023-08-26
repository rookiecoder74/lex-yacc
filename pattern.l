%{
    #include <stdio.h>
%}

%%
[A-Za-z0-9 ]+ {
    int n = yyleng, c = 0, i = 0, x = 0, y = 0, j = 0;
    char *pattern = (char *)malloc(sizeof(char) * n);
    char *string = (char *)malloc(sizeof(char) * n);
    while (yytext[i] != ' ') {
        pattern[i] = yytext[i];
        i++;
        x++;
    }
    i++;
    while (i < n) {
        string[j] = yytext[i];
        i++;
        y++;
        j++;
    }
    for (i = 0; i < y; i++) {
        j = 0;
        while (j < x) {
            if (string[i + j] != pattern[j])
                break;
            j++;
        }
        if (j == x) {
            c++;
            j = 0;
        }
    }
    printf("Result = %d", c);
}
%%

int main() {
    printf("Enter a pattern and a string: ");
    yylex();
}

int yywrap() {
    return 1;
}

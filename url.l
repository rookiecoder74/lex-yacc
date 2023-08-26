%{
    #include <stdio.h>
%}

%%
(http(s)?:\/\/)?(www\.)?[A-Za-z0-9\-]+\.[a-z]+(\/[A-Za-z0-9\-%\/\.]+)? {
    printf("Valid URL");
}

.+ {
    printf("Invalid URL");
}
%%

int main() {
    printf("Enter a URL: ");
    yylex();
}

int yywrap() {
    return 1;
}

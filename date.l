%{
    #include <stdio.h>
    int yyerror(const char* s) {
        printf("Invalid date: %s", s);
        return 0;
    }
%}

%%
(([0-2][0-9])|(3[0-1]))\/((0[0-9]|1[0-2]))\/[0-9]{4} {

    int day = atoi(yytext);
    int month = atoi(yytext+3);
    int year = atoi(yytext+6);

    int is_leap = 0;
    if (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)) {
        is_leap = 1;
    }

    if ((month == 4 || month == 6 || month == 9 || month == 11) && (day > 30)) {
        printf("Invalid date\n");
    } else if (month == 2 && ((is_leap && day > 29) || (!is_leap && day > 28))) {
        printf("Invalid date\n");
    } else if (day > 31) {
        printf("Invalid date\n");
    } else {
        printf("Valid date\n");
    }
}

[0-9A-Za-z]+ {
    //yyerror(yytext);
    printf("Invalid date\n");
}
%%

int main() {
    printf("Enter a date (dd/mm/yyyy format): ");
    yylex();
}

int yywrap() {
    return 1;
}

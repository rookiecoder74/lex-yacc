%{
#include <stdio.h>
%}

%%

"<"[^>]*">" {};

. {fprintf(yyout,"%c",yytext[0]);}
%%

int main(){
        FILE extern *yyin,*yyout;
        yyin = fopen("input.html","r");
        yyout = fopen("output.txt","w");
        yylex();
        fclose(yyin);
        fclose(yyout);
        return 0;
}
 int yywrap(){
        return 1;
}

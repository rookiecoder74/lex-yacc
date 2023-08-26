%{
#include<stdio.h>
#include<math.h>
#include "inpost.tab.h"
%}
%%
[0-9]+ {
 yylval.dval=yytext[0];
 return NUMBER;
 }
[t];
n return 0;
. {return yytext[0];}
%%
void yyerror(char *str)
{
 printf("n Invalid Character...");
}
int main()
{
 printf("Enter Expression => ");
 yyparse();
 return(0);
}

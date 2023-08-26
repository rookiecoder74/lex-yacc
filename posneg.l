%{
#include<stdio.h>
#include<stdlib.h>
int p=0,n=0;
%}
%%
^[-][0-9]+ { n++;
	     printf("Negative number=%s\n",yytext);}
[0-9]+ { p++;
	     printf("Positive number=%s\n",yytext);}
%%
int main()
{
printf("Enter Number:\n");
yylex();
printf("Total positive number=%d\n,Total negative number=%d\n",p,n);
return 0;
}
int yywrap()
{
return 1;
}

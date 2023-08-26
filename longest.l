%{
#include<stdio.h>
int max=0;
%}
%%
[A-Za-z]+ {if (yyleng>max)
		max=yyleng;}
%%
int main()
{
  printf("Enter a string : \n");
  yylex();
  printf("Max=%d\n",max);
}
int yywrap()
{
  return 1;
}

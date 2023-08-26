%{
#include<stdio.h>
int lines=0,spaces=0,chars=0,tabs=0;
%}
%%
[\n] {lines++;}
[' '] {spaces++;}
[^\t] {chars++;}
[\t] {tabs++;}
%%
int main()
{
  printf("Enter a string:");
  yylex();
  printf("No. of lines : %d\n No. of spaces : %d\n No. of characters : %d\n No. of tabs :      %d\n",lines,spaces,chars,tabs);
}
int yywrap()
{
  return 1;
}

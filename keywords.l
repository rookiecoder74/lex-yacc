%{
#include<stdio.h>
int k=0,w=0,n=0;
%}
%%
[0-9] {n++;}
if|else|printf|goto {k++;}
[a-zA-Z]+ {w++;}
%%
int main()
{
  printf("Enter a string: ");
  yylex();
  printf("Numbers: %d\n Key Words: %d\n Words: %d\n",n,k,w);
}
int yywrap()
{
  return 1;
}

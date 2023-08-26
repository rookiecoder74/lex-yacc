%{
#include<stdio.h>
int c=0;
%}
%%
and|but|becausec {c++;}
%%
int main()
{
  printf("Enter a sentence:");
  yylex();
  if(c!=0)
  printf("Compound Sentence");
  else
  printf("Simple Sentence");
}
int yywrap()
{
  return 1;
}

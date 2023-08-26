%{
#include<stdio.h>
int c=0,v=0;
%}
%%
[AEIOUaeiou] {v++;}
[^(AEIOUaeiou) \n] {c++;}
%%
int main()
{
  printf("Enter a string: ");
  yylex();
  printf("No. of vowels: %d\n No. of consonants: %d\n",v,c);
}
int yywrap()
{
  return 1;
}

%{
#include<stdio.h>
int l=0,s=0,t=0;
%}

%%
["\n"] l++;
["\t"] t++
[" "] s++; 
[.] ;
%%

int main()
{
yylex();
printf("%d%d%d",l,s,t);
}

int yywrap(){return 1;}

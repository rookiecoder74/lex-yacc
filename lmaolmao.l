%{
#include<stdio.h>
%}

%%
^[7-9][0-9]{9}	{printf("Valid!\n");}
.*			{printf("Invalid!\n");}
%%

int yywrap(){
	return 1;
}

int main(){
yylex();
	return 0;
}

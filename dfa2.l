%{
#include<stdio.h>
int counta=0,countb=0;
%}

%%
[a] {counta++;}
[b] {countb++;}
%%

int main(){
	yylex();
	if(counta%2==0 && countb%2==0)
		printf("accepted");
	else
		printf("rejected");
	return 0;
}

int yywrap(){
	return 1;
}


%{
#include <stdio.h>
int acpt=0;
%}

%%
[a](a|b|c)*[b] {acpt=1;}
[a](a|b|c)*[c] {acpt=1;}
[b](a|b|c)*[a] {acpt=1;}
[b](a|b|c)*[c] {acpt=1;}
[c](a|b|c)*[a] {acpt=1;}
[c](a|b|c)*[b] {acpt=1;}
.* {}
%%

int main(){
	yylex();
	if(acpt==1){
		printf("\n\nstring accepted");
	}
	else{ 
		printf("\n\nstring rejected");
	}
	return 0;
}

int yywrap(){
	return 1;
}

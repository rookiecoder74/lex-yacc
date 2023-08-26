%{
#include<stdio.h>
%}

%%
(a|b)*b(a|b)(a|b) {printf("accepted");}

.* {printf("rejected");}
%%

int main(){
	yylex();
	return 0;
}

int yywrap(){
	return 1;
}

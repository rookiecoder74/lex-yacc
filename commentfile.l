%{
#include <stdio.h>
%}

%%

\/\/(.*) {};					

\/\*(.*\n)*.*\*\/  {};	

. {fprintf(yyout,"%c",yytext[0]);}
%%

int main(){
	FILE extern *yyin,*yyout;
	yyin = fopen("in.c","r");
	yyout = fopen("out.c","w");
	yylex();
	fclose(yyin);
	fclose(yyout);
	return 0;
}
 int yywrap(){
	return 1;
}

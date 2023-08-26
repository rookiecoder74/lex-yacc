%{
#include<stdio.h>
int vowel=0;
%}

%%
[aeiouAEIOU] {
		vowel++;
		if(vowel>2){
			printf("%s",yytext);
			fprintf(yyout,"%s",yytext);
			vowel=0;
		}
		else{
			printf("zz");
			fprintf(yyout,"zz");
		}
	     }

[^aeiouAEIOU] {
		printf("%s",yytext);
		fprintf(yyout,"%s",yytext);
		vowel=0;
	      }
%%
int main() {
    FILE extern *yyin,*yyout;
    yyin = fopen("input.txt", "r");
    yyout = fopen("output.txt", "w");
    yylex();
    return 0;
}

int yywrap(){
	return 1;
}

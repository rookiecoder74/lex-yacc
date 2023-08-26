%{
#include<stdio.h>
int i,j,flag;
%}
%%
[A-Za-z0-9]*   {for(i=0,j=yyleng-1;i<=j;i++,j--)
		{if(yytext[i]==yytext[j])
			{  flag=1;  }
			else
			{  flag=0;
		                 break; }  }
		if(flag==1)
		printf("Palindrome");
		else
		printf("Not palindrome"); }
%%
int main()
{printf("Enter a string : \n");
  yylex();
}
int yywrap()
{ return 1;}

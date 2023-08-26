%{
#include<stdio.h>
#include<stdlib.h>
#include<math.h>
%}
%%
[0-9]+  {int num=atoi(yytext);
	int n=0,sum=0,temp=num;
	while(temp>0)
	{
		n++;
		temp=temp/10;
	}
	temp=num;
	while(num>0)
	{
		int pow=1;
		for(int i=0;i<n;i++)
			pow*=num%10;
		sum+=pow;
		num=num/10;
	}
	if(temp==sum)
		printf("Armstrong Number\n");
	else
		printf("Not an Armstrong Number\n");
	}
, ;
\n ;
%%
int main()
{
printf("Enter a number:\n");
yylex();
return 0;
}
int yywrap()
{
return 1;}

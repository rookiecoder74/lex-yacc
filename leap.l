%{
#include<stdio.h>
#include<stdlib.h>
%}
%%
[0-9][0-9][0-9][0-9] {
			int yr,r4,r100,r400;
			yr=atoi(yytext);
			printf("%d\n",yr);
			r4=yr%4;
			r100=yr%100;
			r400=yr%400;
			if(r4==0)
			{
				if(r100==0)
					if(r400==0)
						printf("Leap Year\n");
					else
						printf("Not a Leap Year\n");
				else
					printf("Leap Year\n");
			}
			else
				printf("Not a Leap Year\n");
		      }
%%
int main()
{
printf("Enter a year:\n");
yylex();
return 0;
}
int yywrap()
{
return 1;
}

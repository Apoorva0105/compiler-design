/* Lex program to identify the capital words from the given input string.*/
%{
	#include<stdio.h>
%}

%%
[A-Z]+[\t\n ] { printf("%s",yytext); }
.  ;
%%

main( ) 
{
	printf("Enter some string with capital words in between\n");
	yylex();
}

int yywrap( )
{
	return 1;
}




Output - 

~/LexYacc$ gcc lex.yy.c
~/LexYacc$ ./a.out
  
Enter some string with capital words in between
Tanika yadav VTU Belagavi Indore INDIA

VTU INDIA

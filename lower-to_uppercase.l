lowercase[a-z]
uppercase[A-Z]
space[\t\n]

%%

{lowercase} {printf("%c",yytext[0] - 32);}
{uppercase} {printf("%c",yytext[0] + 32);}
{space} ECHO;
. ECHO;
%%

int yywrap() {
    return 1;
}

int main()
{
	yylex();
    return 0;
}



Output -
$ lex lower_to_uppercase.l
$ gcc lower_to_uppercase.c -ll
$ ./a.out<untitled.txt
mY NAME IS tANIKA
tanika yadav
$

and the untitled.txt file contains:
My name is Tanika
TANIKA YADAV

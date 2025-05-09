%{
#include <stdio.h>
#include <stdlib.h>

void yyerror(const char *s);
int yylex(void);
%}

%token BINARY

%%
input:
    BINARY '\n' { printf("Decimal: %d\n", $1); }
;
%%

void yyerror(const char *s) {
    fprintf(stderr, "Error: %s\n", s);
}

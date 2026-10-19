%{
#include <stdio.h>

int num = 0;
int a = 0;
%}

%%

[Aa][A-Za-z0-9]*              { a++; }

[0-9]+(\.[0-9]+)?([eE][+-]?[0-9]+)?   { num++; }

.|\n                           ;

%%

int main()
{
    printf("Input: ");
    yylex();

    printf("Number of a: %d\n", a);
    printf("Numbers count: %d\n", num);

    return 0;
}

int yywrap()
{
    return 1;
}

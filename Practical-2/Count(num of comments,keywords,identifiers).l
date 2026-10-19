%{
#include<stdio.h>

int w=0, keywords=0, identifiers=0;
int spaces=0, lines=0, comments=0;
%}

%%
"//".*                      { comments++; }

"int"|"float"|"char"|"double"|"if"|"else"|"for"|"while"|"return"  { keywords++; w++; }

[A-Za-z_][A-Za-z0-9_]*      { identifiers++; w++; }
[0-9]+(\.[0-9]+)?   { w++; }
[ \t]                       { spaces++; }
\n                          { lines++; }
.           { }
%%

int main()
{
    printf("Enter the input:\n");
    yylex();

    printf("\nWords = %d", w);
    printf("\nKeywords = %d", keywords);
    printf("\nIdentifiers = %d", identifiers);
    printf("\nComments = %d", comments);
    printf("\nSpaces = %d", spaces);
    printf("\nLines = %d", lines + 1);

    return 0;
}

int yywrap()
{
    return 1;
}

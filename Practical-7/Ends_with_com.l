%{
#include <stdio.h>
%}

%%
.*(com|COM)$ { printf("Line ends with com"); }
.*            { printf("Line does not end with com"); }
\n             ;
%%

int main() {
    printf("Enter test lines ending with 'com' : ");
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}

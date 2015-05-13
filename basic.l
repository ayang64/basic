%{
#include <stdio.h>
#define token(x)		{ printf("Token: (%s) %s\n", yytext, #x); /* return (x); */ }
%}

%%
^[[:digit:]]+							{ token(LINE_NUMBER); }
\"(?:[^\"\\]|\\.)*\"			{ token(QUOTED_STRING); }
[[:alpha:]]+[[:alnum:]]*	{	token(SYMBOL); }
[-+]*[0-9]+(\.)?[0-9]+		{ token(NUMBER); }
[[:space:]]+							;
.													{	printf("CHHAR: %c\n", yytext[0]); }
%%

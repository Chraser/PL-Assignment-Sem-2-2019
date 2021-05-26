%{
#include "y.tab.h"
#include <stdlib.h>
%}
%%
[0-9]+ 			{ yylval.value = atoi(yytext); return NUMBER;}
"[" 			{ return OSQUAREBRAC; }
"]"				{ return ESQUAREBRAC; }
","				{ return COMMA; }
"-"				{ return MINUS; }
\n 				{ return 0;}
"exit"			{ exit(0); }
[ \t]+ 			{ /* ignore whitespace */; }
%%
#ifndef yywrap
	yywrap() { return 1; }
#endif
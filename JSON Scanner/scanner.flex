%{
#include "token.h"
%}
NUMBER [0-9]
STRING [a-zA-Z]
%%(" "|\t|\n) /*skip whitespace*/
\(	{return TOKEN_LBRACKET;}
\)	{return TOKEN_RBRACKET;}
\:	{return TOKEN_COLON;}
{STRING}+	{return TOKEN_STRING;}
{NUMBER}+	{return TOKEN_NUMBER;}
.	{return TOKEN_ERROR;}
%%
int yywrap() {return 1;}
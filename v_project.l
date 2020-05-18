%{
  #include<stdio.h>
  #include "y.tab.h"
  int k=0,i=0,o=0;
%}
%%
"(" {return OP1;}
")" {return OP2;}
"if" {printf("\n%s is a keyword",yytext);k++;return IF;}
"else" {printf("\n%s is a keyword",yytext);k++;return ELSE;}
"elseif" {printf("\n%s is a keyword",yytext);k++;return ELSEIF;}
"then" {printf("\n%s is a keyword",yytext);k++;return THEN;}
"printf" {printf("\n%s is a keyword",yytext);k++;return PRINTF;}
"and" {printf("\n%s is a keyword",yytext);k++;return AND;}
"integer" {printf("\n%s is a keyword",yytext);k++;return INTEGER;}
"Procedure" {printf("\n%s is a keyword",yytext);k++;return PROC;}
"end" {printf("\n%s is a keyword",yytext);k++;return END;}
["][a-zA-Z0-9_\- ]*["] {printf("\n%s is a message",yytext);return MSG;}
[a-zA-Z][a-zA-Z0-9_]* {printf("\n%s is an indentifier",yytext);i++;return ID;}
[0-9]* {printf("\n%s is a number",yytext);return NUM;}
":=" {printf("\n%s is an operator",yytext);o++;return EQQ;}
"=" {printf("\n%s is an operator",yytext);o++;return EQ;}
":" {return C;}
";" {return SC;}
. {;}
%%
int yywrap()
{
  return 1;
}
 

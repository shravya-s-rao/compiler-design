%{
  #include<stdio.h>
  #include<stdlib.h>
  #include<string.h>
  extern int k,o,i;
  extern int yylex();
  extern int *yyin;
  extern int *yyout;
%}
%token IF ELSE ELSEIF THEN PRINTF AND INTEGER PROC END MSG ID NUM EQQ EQ C SC OP1 OP2
%%
stmt : ID C INTEGER SC PROC BODY END ID {
     printf("\n---------------------------------------\n");
     printf("\nValid\n");
     printf("The number of keywords are :%d\n",k);
     printf("The number of identifiers are :%d\n",i);
     printf("The number of operators are :%d\n",o);
     printf("------------------------------------------\n");
     exit(0);}
     ;
BODY : ID OP1 ID C INTEGER OP2 PBODY 
     ;
PBODY: ID EQQ NUM SC IF ID EQ NUM AND ID EQ NUM THEN IFBODY END IF SC
        ;
IFBODY: PRINTF OP1 MSG OP2 SC ELSEIF ID EQ NUM AND ID EQ NUM THEN ELSEIFBODY ;
ELSEIFBODY: PRINTF OP1 MSG OP2 SC ELSE S
             ;
S: PRINTF OP1 MSG OP2 SC 
  ;
%%
int yyerror()
{
  printf("\nInvalid\n");
  exit(0);
}
int main(int argc,char *argv[])
{
  yyin=fopen(argv[1],"r");
  yyparse();

}

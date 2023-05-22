%{
#include <stdio.h>
extern FILE *yyin;
%}

%%
in { printf("int "); }
fl { printf("float "); }
ch { printf("char "); }
db { printf("double "); }
vd { printf("void "); }
arrin {printf ("int nombreVar [tamaño] = {} \n");}
arrdb {printf ("double nombreVar [tamaño] = {} \n");}
arrch {printf ("char nombreVar [tamaño] = {} \n");}
punt { printf("tipoDato *variable \n"); }

mn { printf("int main (){\n return  ; \n} "); }
mt { printf("tipoDato nombreMetodo(parametros){\n return  ; \n} "); }
enum {printf("enum nombreEnum{listaEnum} listaVar ; \n"); }

frxy<\+ { printf("int x;\nint y=   ;\nfor(x=0;x<y;x++){\n\n}\n"); }
frxy<\- { printf("int x;\nint y=   ;\nfor(x=0;x<y;x--){\n\n}\n"); }
frxy>\- { printf("int x;\nint y=   ;\nfor(x=0;x>y;x--){\n\n}\n"); }
frxy>\+ { printf("int x;\nint y=   ;\nfor(x=0;x>y;x++){\n\n}\n"); }

sii= {printf("int x=   ;\nint y=   ;\n if(x==y){\n\n}else{\n\n}\n"); }
sii> {printf("int x=   ;\nint y=   ;\n if(x>y){\n\n}else{\n\n}\n"); }
sii< {printf("int x=   ;\nint y=   ;\n if(x<y){\n\n}else{\n\n}\n"); }
sii>= {printf("int x=   ;\nint y=   ;\n if(x>=y){\n\n}else{\n\n}\n"); }
sii<= {printf("int x=   ;\nint y=   ;\n if(x<=y){\n\n}else{\n\n}\n"); }
sii!= {printf("int x=   ;\nint y=   ;\n if(x!=y){\n\n}else{\n\n}\n"); }

sid= {printf("double x=   ;\ndouble y=   ;\n if(x==y){\n\n}else{\n\n}\n"); }
sid> {printf("double x=   ;\ndouble y=   ;\n if(x>y){\n\n}else{\n\n}\n"); }
sid< {printf("double x=   ;\ndouble y=   ;\n if(x<y){\n\n}else{\n\n}\n"); }
sid>= {printf("double x=   ;\ndouble y=   ;\n if(x>=y){\n\n}else{\n\n}\n"); }
sid<= {printf("double x=   ;\ndouble y=   ;\n if(x<=y){\n\n}else{\n\n}\n"); }
sid!= {printf("double x=   ;\ndouble y=   ;\n if(x!=y){\n\n}else{\n\n}\n"); }

sis= {printf("char x[SIZE] = \"    \";   \nchar y[SIZE] = \"    \";\n if(strcmp(x,y)== 0){\n\n}else{\n\n}\n"); }
sis!= {printf("char x[SIZE] = \"    \";   \nchar y[SIZE] = \"    \";\n if(strcmp(x,y)!= 0){\n\n}else{\n\n}\n"); }

wii= {printf("int x=   ;\nint y=   ;\n while(x==y){\n\nx++;\n}\n"); }
wii> {printf("int x=   ;\nint y=   ;\n while(x>y){\n\nx++;\n}\n"); }
wii< {printf("int x=   ;\nint y=   ;\n while(x<y){\n\nx++;\n}\n"); }
wii>= {printf("int x=   ;\nint y=   ;\n while(x>=y){\n\nx++;\n}\n"); }
wii<= {printf("int x=   ;\nint y=   ;\n while(x<=y){\n\nx++;\n}\n"); }
wii!= {printf("int x=   ;\nint y=   ;\n while(x!=y){\n\nx++;\n}\n"); }

wid= {printf("double x=   ;\ndouble y=   ;\n while(x==y){\n\nx++;\n}\n"); }
wid> {printf("double x=   ;\ndouble y=   ;\n while(x>y){\n\nx++;\n}"); }
wid< {printf("double x=   ;\ndouble y=   ;\n while(x<y){\n\nx++;\n}"); }
wid>= {printf("double x=   ;\ndouble y=   ;\n while(x>=y){\n\nx++;\n}"); }
wid<= {printf("double x=   ;\ndouble y=   ;\n while(x<=y){\n\nx++;\n}"); }
wid!= {printf("double x=   ;\ndouble y=   ;\n while(x!=y){\n\nx++;\n}"); }

dwii= {printf("int x=   ;\nint y=   ;\ndo{\n\nx++;\n}while(x==y);\n"); }
dwii> {printf("int x=   ;\nint y=   ;\ndo{\n\nx++;\n}while(x>y);\n"); }
dwii< {printf("int x=   ;\nint y=   ;\ndo{\n\nx++;\n}while(x<y);\n"); }
dwii>= {printf("int x=   ;\nint y=   ;\ndo{\n\nx++;\n}while(x>=y);\n"); }
dwii<= {printf("int x=   ;\nint y=   ;\ndo{\n\nx++;\n}while(x<=y);\n"); }
dwii!= {printf("int x=   ;\nint y=   ;\ndo{\n\nx++;\n}while(x!=y);\n"); }

dwid= {printf("double x=   ;\ndouble y=   ;\ndo{\n\nx++;\n}while(x==y);\n"); }
dwid> {printf("double x=   ;\ndouble y=   ;\ndo{\n\nx++;\n}while(x>y);\n"); }
dwid< {printf("double x=   ;\ndouble y=   ;\ndo{\n\nx++;\n}while(x<y);\n"); }
dwid>= {printf("double x=   ;\ndouble y=   ;\ndo{\n\nx++;\n}while(x>=y);\n"); }
dwid<= {printf("double x=   ;\ndouble y=   ;\ndo{\n\nx++;\n}while(x<=y);\n"); }
dwid!= {printf("double x=   ;\ndouble y=   ;\ndo{\n\nx++;\n}while(x!=y);\n"); }

swca {printf("int var = 0;\n switch(var) {\n case const1:\n   sentencia;\n   break;\n case const2:\n   sentencia;\n   break;\n default:\n   sentencia;\n }\n");}

opi\? {printf("int x=   ;\n Exp1 ? Exp2 : Exp3 \n"); }
opd\? {printf("double x=   ;\n Exp1 ? Exp2 : Exp3 \n"); }

rt { printf("return "); }

sc { printf("tipoDato scanf (); \n"); }
prt { printf("tipoDato printf (); "); }
fo { printf(" FILE *fopen (char *nombre , char *modo); \n"); }
fc { printf(" int fclose (FILE *fp) ;\n"); }

[(){};=+\-*/<>\[\],] { printf("%c", yytext[0]); }

. {printf ("%s", yytext);}
%%

int yywrap(){
return 1;
}

int main(int argc, char **argv) {
    if (argc > 1)
        yyin = fopen(argv[1], "rt");
    else
        yyin = stdin;
    yylex();
    return 0;
}

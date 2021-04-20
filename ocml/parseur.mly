%token NOMBRE PLUS MOINS FOIS DIVISION GPAREN DPAREN EOL
%left PLUS MOINS
%left FOIS DIVISION
%nonassoc UMOINS
%type <unit> main expression
%start main
%%
main:
expression EOL {}
;
expression:
expression PLUS expression {}
| expression MOINS expression {}
| expression FOIS expression {}
| expression DIVISION expression {}
| GPAREN expression DPAREN {}
| MOINS expression %prec UMOINS {}
| NOMBRE {}
;

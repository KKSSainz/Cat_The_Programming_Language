grammar grammarCat;
root            : (expression NLINE)+;

expression      : '{' expression '}'    #bracketts
                | '[' expression ']'    #bracketts
                | left=expression operator=OPERATORS right=expression   #operation
                | NUMBERS   #nums
//                | COMFUNC   #comfunc
                | VAR   #vars
                | VAR ':=' NUMBERS ';'  #com
                | VAR '=' FUNCID '(' (PARAMS)? ');' #func
//                | LEAF   #leaf
                ;

NLINE           : [\r\n]+;
WS              : [ \t]+ -> skip ;
OPERATORS       : '*' | '+' | '-';

NUMBERS         : INT | HEX | BIN;
//COMFUNC         : VAR (FUNC | COMMAND) ';';
VAR             : 'a' | 't';
//LEAF            : NUMBERS;// | VAR;

ZERO            : '0';
NONZERODIGIT    : '1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9';
DIGIT           : ZERO | NONZERODIGIT;
INT             : ZERO | (NONZERODIGIT DIGIT*);

HEXZERO         : ZERO | '00';
HEXNONZERO      : '1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F';
HEXNUM          : HEXNONZERO ('0' | HEXNONZERO)*;
HEX             : '0x' (HEXZERO | HEXNUM);

BINZERO         : ZERO;
BINONE          : '1';
BINDIGIT        : BINZERO | BINONE;
BINNUM          : BINONE BINDIGIT*;
BIN             : '0b' (BINZERO | BINNUM);

//FUNC            : '=' FUNCID '(' (PARAMS)? ')';
//COMMAND         : ':=' NUMBERS;
ALPH            : 'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z';
FUNCID          : ID;
PARAMS          : ID;
ID              : ALPH (ALPH | DIGIT)*;
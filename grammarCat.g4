grammar grammarCat;
root            : (expression NLINE)*;

expression      : expression OPERATORS expression
                | NUMBERS
                | COMFUNC
                | VAR
                | '[' expression ']'
                | '{' expression '}'
                ;

NLINE           : [\r\n]+;
OPERATORS       : ('*') | ('+') | ('-');
NUMBERS         : INT | HEX | BIN;

VAR             : 'a' | 't';

INT             : ZERO | (NONZERODIGIT DIGIT+);
DIGIT           : ZERO | NONZERODIGIT;
ZERO            : '0';
NONZERODIGIT    : '1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9';

HEX             : '0x' (HEXZERO | HEXNUM+);
HEXZERO         : ZERO | '00';
HEXNUM          : HEXNONZERO ('0' | HEXNONZERO)*;
HEXNONZERO      : '1'|'2'|'3'|'4'|'5'|'6'|'7'|'8'|'9'|'A'|'B'|'C'|'D'|'E'|'F';

BIN             : '0b' (BINZERO | BINNUM+);
BINNUM          : BINONE BINDIGIT*;
BINDIGIT        : BINZERO | BINONE;
BINZERO         : ZERO;
BINONE          : '1';

COMFUNC         : VAR (' ')? (FUNC | COMMAND) ';';
FUNC            : '=' (' ')? FUNCID '(' (PARAMS)? ')';
COMMAND         : ':=' (' ')? (INT | HEX | BIN);
ID              : ALPH (ALPH | DIGIT)*;
ALPH            : 'a'|'b'|'c'|'d'|'e'|'f'|'g'|'h'|'i'|'j'|'k'|'l'|'m'|'n'|'o'|'p'|'q'|'r'|'s'|'t'|'u'|'v'|'w'|'x'|'y'|'z'|'A'|'B'|'C'|'D'|'E'|'F'|'G'|'H'|'I'|'J'|'K'|'L'|'M'|'N'|'O'|'P'|'Q'|'R'|'S'|'T'|'U'|'V'|'W'|'X'|'Y'|'Z';
FUNCID          : ID;
PARAMS          : ID;
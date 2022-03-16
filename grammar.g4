Grammar         : grammar;
grammar         : (expression nline)*;

expression      : expression operators expression
                | numbers
                | comFunc
                | var
                | '[' expression ']'
                | '{' expression '}'
                ;

NLINE           : [\r\n]+;
OPERATORS       : ('*') | ('+') | ('-');
NUMBERS         : int | hex | bin;

VAR             : "a" | "t"

INT             : zero | (nonZeroDigit digit+);
DIGIT           : zero | nonZeroDigit;
ZERO            : "0";
NONZERODIGIT    : "1"|"2"|"3"|"4"|"5"|"6"|"7"|"8"|"9";

HEX             : "0x", (hexZero | hexNum+);
HEXZERO         : zero | "00";
HEXNUM          : hexNonZero, ("0"  | hexNonZero)*;
HEXNONZERO      : "1"|"2"|"3"|"4"|"5"|"6"|"7"|"8"|"9"|"A"|"B"|"C"|"D"|"E"|"F";

BIN             : "0b" (binZero | binNum+)
BINNUM          : binOne binDigit*;
BINDIGIT        : binZero | binOne;
BINZERO         : zero;
BINONE          : "1";

COMFUNC         : var (" ")? (FUNC | COMMAND) ";";
FUNC            : "=" (" ")? FUNCID "(" (params)? ")";
COMMAND         : ":=" (" ")? (int | hex | bin);
ID              : alph (alph | digit)*;
ALPH            : "a"|"b"|"c"|"d"|"e"|"f"|"g"|"h"|"i"|"j"|"k"|"l"|"m"|"n"|"o"|"p"|"q"|"r"|"s"|"t"|"u"|"v"|"w"|"x"|"y"|"z"|"A"|"B"|"C"|"D"|"E"|"F"|"G"|"H"|"I"|"J"|"K"|"L"|"M"|"N"|"O"|"P"|"Q"|"R"|"S"|"T"|"U"|"V"|"W"|"X"|"Y"|"Z";
FUNCID          : ID;
PARAMS          : ID;
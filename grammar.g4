Grammar         : grammar;
grammar         : (expression nline)*;
nline           : [\r\n]+;

expression      : expression operators expression
                | numbers
                | comFunc
                | var
                | '[' expression ']'
                | '{' expression '}'
                ;

operators       : ('*') | ('+') | ('-');
numbers         : int | hex | bin;

var             : "a" | "t"

int             : zero | (nonZeroDigit digit+);
digit           : zero | nonZeroDigit;
zero            : "0";
nonZeroDigit    : "1"|"2"|"3"|"4"|"5"|"6"|"7"|"8"|"9";

hex             : "0x", (hexZero | hexNum+);
hexZero         : zero | "00";
hexNum          : hexNonZero, {"0"  | hexNonZero};
hexNonZero      : "1"|"2"|"3"|"4"|"5"|"6"|"7"|"8"|"9"|"A"|"B"|"C"|"D"|"E"|"F";

bin             : "0b" (binZero | binNum+)
binNum          : binOne binDigit+;
binDigit        : binZero | binOne;
binZero         : zero;
binOne          : "1";

comFunc         : var, [" "], (func | command), ";";
func            : "=", [" "], funcID, "(",[params],")";
command         : ":=", [" "], (int | hex | bin);
ID              : alph, {alph | digit};
alph            : "a"|"b"|"c"|"d"|"e"|"f"|"g"|"h"|"i"|"j"|"k"|"l"|"m"|"n"|"o"|"p"|"q"|"r"|"s"|"t"|"u"|"v"|"w"|"x"|"y"|"z"|"A"|"B"|"C"|"D"|"E"|"F"|"G"|"H"|"I"|"J"|"K"|"L"|"M"|"N"|"O"|"P"|"Q"|"R"|"S"|"T"|"U"|"V"|"W"|"X"|"Y"|"Z";
funcID          : ID;
params          : ID;
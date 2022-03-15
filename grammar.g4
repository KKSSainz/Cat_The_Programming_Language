G = (∑,∏,P,S)
∑ = {a,t,+,-,*,{,},[,]}
∏ = {S,T,F,U,Y,I}
S je počáteční symbol.
Produkční pravidla:
S → T + S
S → T
T → F - T
T → F
F → U * F
F → U
U → {S}
U → Y
Y → [S]
Y → a
Y → I
I → t

Grammar         = expression;
expression      = lNumber | hex | comFunc;

lNumber = nonZeroDigit,{digit},["I"|"L"];
digit          = "0" | nonZeroDigit;
nonZeroDigit    = "1"|"2"|"3"|"4"|"5"|"6"|"7"|"8"|"9";

hex       = "0x", (hexZero | hexNum);
hexZero       = "0" | "00";
hexNum = hexNonZero, {"0"  | hexNonZero};
hexNonZero        = "1"|"2"|"3"|"4"|"5"|"6"|"7"|"8"|"9"|"A"|"B"|"C"|"D"|"E"|"F";

comFunc = varID, [" "], (func | command);
func = "=", [" "], funcID, "(",[params],")";
command = ":=", [" "], (lNumber | hex);
varID = alph, {alph | digit};
alph = "a"|"b"|"c"|"d"|"e"|"f"|"g"|"h"|"i"|"j"|"k"|"l"|"m"|"n"|"o"|"p"|"q"|"r"|"s"|"t"|"u"|"v"|"w"|"x"|"y"|"z"|"A"|"B"|"C"|"D"|"E"|"F"|"G"|"H"|"I"|"J"|"K"|"L"|"M"|"N"|"O"|"P"|"Q"|"R"|"S"|"T"|"U"|"V"|"W"|"X"|"Y"|"Z";
funcID = varID;
params = varID;


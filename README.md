## Cat_The_Programming_Language
~Programovací jazyk C@ 🐱

***obsah jazyka:*** 
  - přiřazení :=
  - funkce
              
  **operace:**
  - součet 
  - součin 
  - rozdíl
              
  **závorky:**
  - hranaté
  - složené
  
  **operandy:**
  - a
  - t

  **datové typy:**
  - int16: 0 - 65 536
  - binární byte: 0b
  - hexadecimal byte: 0x

***pořadí operátorů:***
  [], {}, *, +, -

***validní syntaxe:***
  - 3 + 5
  - 2 * 9
  - 3 - 123
  - a * t
  - a + t
  - t - a
  - a * [a + t]
  - a * {a + t}
  - t + [a * {t + t}]
  - 5 + a
  - 0xA
  - 0b01
  - 0b10010101

***nevalidní syntaxe:***
  - t + {a * [t + t]}
  - + a
  - + 2
  - * 25
  - 4 +
  - 01
  - 004
  - t + a *
  - t *+ a
  - t ++ a
  - a := 45 * b
  - a = 4 * t
  - 0xa
  - 0XA
  - 0B1
  - b11
  - 0b1001010111
  - a - t := t + a
  - t = 0fn();
  - t = fn()

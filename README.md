## Cat_The_Programming_Language
~Programovací jazyk C@ 🐱

***obsah jazyka:*** 
  - přiřazení :=
              
  **operace:**
  - součet 
  - součin 
  - rozdíl
              
  **závorky:**
  - hranaté
  - složené
  - 
  **operandy:**
  - a
  - t

  **datové typy:**
  - integer
  - boolean
  - hexadecimal byte

***pořadí operátorů:***
  *, +, -, [], {}

***validní syntaxe:***
  - a * t
  - a + t
  - t - a
  - a * [a + t]
  - a * {a + t}
  - t + [a * {t + t}]
  - 5 + a
  - 0xA
  - a := t + 0x11

***nevalidní syntaxe:***
  - t + {a * [t + t]}
  - + a
  - t + a *
  - a := 45 * b
  - a = 4 * t
  - 0xa
  - 0XA

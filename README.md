# Prolog

Feeding it the dictionary in the format:
```
word(a,b,a,b,u,a).
word(a,b,a,c,a,y).
word(a,b,a,c,u,s).
...
```

The query:
```
word(D,M,S,H,M,S),
word(Q,W,Z,X,V,R),
word(V,X,H,S,X,H),
word(Z,R,M,Z,Q,R),
word(W,Z,D,R,R,Z).
```
offers the answer:
```
D = k,
M = o,
S = w,
H = t,
Q = l,
W = u,
Z = p,
X = i,
V = n,
R = e
```

or to display the words:
```
word(D,M,S,H,M,S),
word(Q,W,Z,X,V,R),
word(V,X,H,S,X,H),
word(Z,R,M,Z,Q,R),
word(W,Z,D,R,R,Z),
atomics_to_string([D,M,S,H,M,S],Word1),
atomics_to_string([Q,W,Z,X,V,R],Word2),
atomics_to_string([V,X,H,S,X,H],Word3),
atomics_to_string([Z,R,M,Z,Q,R],Word4),
atomics_to_string([W,Z,D,R,R,Z],Word5).
```

or
```
puzzle(W1,W2,W3,W4,W5) :- 
  word(D,M,S,H,M,S),
  word(Q,W,Z,X,V,R),
  word(V,X,H,S,X,H),
  word(Z,R,M,Z,Q,R),
  word(W,Z,D,R,R,Z),
  Z == p,
  string_chars(W1,[D,M,S,H,M,S]),
  string_chars(W2,[Q,W,Z,X,V,R]),
  string_chars(W3,[V,X,H,S,X,H]),
  string_chars(W4,[Z,R,M,Z,Q,R]),
  string_chars(W5,[W,Z,D,R,R,Z]).
```


to run:
```
$ swipl worddict.pl puzzle.pl
Welcome to SWI-Prolog (threaded, 64 bits, version 9.0.3)
SWI-Prolog comes with ABSOLUTELY NO WARRANTY. This is free software.
Please run ?- license. for legal details.

For online help and background, visit https://www.swi-prolog.org
For built-in help, use ?- help(Topic). or ?- apropos(Word).

?- puzzle(W1,W2,W3,W4,W5).
W1 = "kowtow",
W2 = "lupine",
W3 = "nitwit",
W4 = "people",
W5 = "upkeep" ;
false.

?-
```


Supplemental stuff, since we have a word database:
Find the 5 letter words with "pp" in positions 3 and 4
```
word(A,B,p,p,E), atomics_to_string([A,B,p,p,E],Answer).
```

Find 7 letter words that are valid words when spelled backwards
```
word(A,B,C,D,E,F,G),word(G,F,E,D,C,B,A), atomics_to_string([A,B,C,D,E,F,G],Answer).
```

Find all the 7 letter palindromes
```
word(A,B,C,D,C,B,A), atomics_to_string([A,B,C,D,C,B,A],Answer).
```
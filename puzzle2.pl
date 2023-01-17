puzzle(W1,W2,W3,W4,W5) :-
  word(W1),
  word(W2),
  word(W3),
  word(W4),
  word(W5),
  Z == p,
  string_chars(W1,[D,M,S,H,M,S]),
  string_chars(W2,[Q,W,Z,X,V,R]),
  string_chars(W3,[V,X,H,S,X,H]),
  string_chars(W4,[Z,R,M,Z,Q,R]),
  string_chars(W5,[W,Z,D,R,R,Z]).

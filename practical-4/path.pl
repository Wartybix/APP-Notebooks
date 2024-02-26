arc(1,2).
arc(2,3).
arc(3,4).
arc(3,5).
arc(2,5).
arc(5,6).
arc(2,6).

path(X,Y,[arc(X,Y)]) :- arc(X,Y).
path(X,Y,[arc(X,Z)|P]) :- arc(X,Z),path(Z,Y,P).

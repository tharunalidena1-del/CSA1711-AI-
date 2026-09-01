% Alpha-Beta Pruning in Prolog

% Leaf node values
value(a, 3).
value(b, 5).
value(c, 2).
value(d, 9).
value(e, 12).
value(f, 5).
value(g, 23).
value(h, 23).

% Game tree
children(root, [n1, n2]).
children(n1, [a, b]).
children(n2, [n3, n4]).
children(n3, [c, d]).
children(n4, [e, f, g, h]).

% Alpha-Beta algorithm
alphabeta(Node, Depth, Alpha, Beta, Value) :-
    ( Depth =:= 0 ->
        value(Node, Value)
    ;
        children(Node, Children),
        max_value(Children, Depth, Alpha, Beta, Value)
    ).

% MAX player
max_value([], _, Alpha, _, Alpha).

max_value([Child|Rest], Depth, Alpha, Beta, Value) :-
    alphabeta(Child, Depth, Alpha, Beta, ChildValue),
    NewAlpha is max(Alpha, ChildValue),
    ( NewAlpha >= Beta ->
        Value = NewAlpha
    ;
        max_value(Rest, Depth, NewAlpha, Beta, Value)
    ).

% Run the program
start :-
    alphabeta(root, 3, -1000, 1000, Value),
    write('Best value = '),
    write(Value),
    nl.

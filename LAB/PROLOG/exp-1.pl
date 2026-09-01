% Map Coloring using CSP

map_coloring(Colors) :-

    % Four regions
    Colors = [A, B, C, D],

    % Each region can have Red, Green or Blue
    member(A, [red, green, blue]),
    member(B, [red, green, blue]),
    member(C, [red, green, blue]),
    member(D, [red, green, blue]),

    % Constraints: neighboring regions must have different colors
    A \= B,
    A \= C,
    B \= C,
    B \= D,
    C \= D.

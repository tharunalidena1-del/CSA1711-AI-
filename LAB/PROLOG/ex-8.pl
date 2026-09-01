% Prolog Database: Name and Date of Birth

person(tharun, 15, 5, 2005).
person(rahul, 20, 8, 2004).
person(anu, 10, 12, 2006).
person(priya, 25, 3, 2005).

% Display person's DOB
show_dob(Name) :-
    person(Name, Day, Month, Year),
    write('Name: '), write(Name), nl,
    write('DOB: '),
    write(Day), write('/'),
    write(Month), write('/'),
    write(Year), nl.

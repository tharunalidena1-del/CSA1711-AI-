% Decision Tree in Prolog

% Facts
weather(sunny).
weather(rainy).
weather(cloudy).

temperature(hot).
temperature(cold).

% Decision Tree Rules

decision(Weather, Temperature, Play) :-
    Weather = sunny,
    Temperature = hot,
    Play = no.

decision(Weather, Temperature, Play) :-
    Weather = sunny,
    Temperature = cold,
    Play = yes.

decision(Weather, _, Play) :-
    Weather = rainy,
    Play = no.

decision(Weather, _, Play) :-
    Weather = cloudy,
    Play = yes.

% Start program
start :-
    write('Enter weather (sunny/rainy/cloudy): '),
    read(Weather),
    write('Enter temperature (hot/cold): '),
    read(Temperature),
    decision(Weather, Temperature, Play),
    write('Decision: '),
    write(Play),
    nl.

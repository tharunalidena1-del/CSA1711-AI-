% Feed Forward Neural Network in Prolog

% Activation function: Sigmoid
sigmoid(X, Y) :-
    Y is 1 / (1 + exp(-X)).

% Neuron calculation
neuron(X1, X2, W1, W2, Bias, Output) :-
    Sum is X1*W1 + X2*W2 + Bias,
    sigmoid(Sum, Output).

% Feed Forward Network
feed_forward(X1, X2, Output) :-
    % Hidden layer
    neuron(X1, X2, 0.5, 0.4, 0.1, H1),
    neuron(X1, X2, 0.3, 0.7, 0.2, H2),

    % Output layer
    neuron(H1, H2, 0.6, 0.5, 0.1, Output).

% Start program
start :-
    write('Enter first input: '),
    read(X1),
    write('Enter second input: '),
    read(X2),

    feed_forward(X1, X2, Output),

    write('Network Output: '),
    write(Output),
    nl.

# Tic Tac Toe using Minimax Algorithm

board = [" " for _ in range(9)]

def display():
    print()
    for i in range(0, 9, 3):
        print(board[i], "|", board[i+1], "|", board[i+2])
        if i < 6:
            print("--+---+--")
    print()

def check_winner(player):
    win = [
        [0,1,2], [3,4,5], [6,7,8],
        [0,3,6], [1,4,7], [2,5,8],
        [0,4,8], [2,4,6]
    ]

    for w in win:
        if board[w[0]] == board[w[1]] == board[w[2]] == player:
            return True
    return False

def minimax(is_maximizing):
    if check_winner("O"):
        return 1
    if check_winner("X"):
        return -1
    if " " not in board:
        return 0

    if is_maximizing:
        best = -100

        for i in range(9):
            if board[i] == " ":
                board[i] = "O"
                score = minimax(False)
                board[i] = " "
                best = max(best, score)

        return best

    else:
        best = 100

        for i in range(9):
            if board[i] == " ":
                board[i] = "X"
                score = minimax(True)
                board[i] = " "
                best = min(best, score)

        return best

def best_move():
    best_score = -100
    move = 0

    for i in range(9):
        if board[i] == " ":
            board[i] = "O"
            score = minimax(False)
            board[i] = " "

            if score > best_score:
                best_score = score
                move = i

    return move


# Game
print("Tic Tac Toe")
print("You are X, Computer is O")

for turn in range(9):
    display()

    if turn % 2 == 0:
        position = int(input("Enter position (1-9): ")) - 1

        if board[position] != " ":
            print("Position already occupied!")
            continue

        board[position] = "X"

        if check_winner("X"):
            display()
            print("You win!")
            break

    else:
        move = best_move()
        board[move] = "O"
        print("Computer chose position:", move + 1)

        if check_winner("O"):
            display()
            print("Computer wins!")
            break

else:
    display()
    print("Game Draw!")

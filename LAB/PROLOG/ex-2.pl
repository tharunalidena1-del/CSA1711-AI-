# Tic Tac Toe Game

board = [" " for i in range(9)]

def display():
    print()
    print(board[0], "|", board[1], "|", board[2])
    print("--+---+--")
    print(board[3], "|", board[4], "|", board[5])
    print("--+---+--")
    print(board[6], "|", board[7], "|", board[8])
    print()

def check_winner(player):
    win = [
        [0,1,2], [3,4,5], [6,7,8],
        [0,3,6], [1,4,7], [2,5,8],
        [0,4,8], [2,4,6]          vhcdtyuiop[
                                             ]
    ]

    for combination in win:
        if all(board[i] == player for i in combination):
            return True
    return False

# Game starts
player = "X"

for turn in range(9):
    display()

    position = int(input("Player " + player + ", enter position (1-9): ")) - 1

    if board[position] != " ":
        print("Position already taken!")
        continue

    board[position] = player

    if check_winner(player):
        display()
        print("Player", player, "wins!")
        break

    if turn == 8:
        display()
        print("Game Draw!")
        break

    if player == "X":
        player = "O"
    else:
        player = "X"

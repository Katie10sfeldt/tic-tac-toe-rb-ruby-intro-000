# all methods defined below

# Initializes the game board to an empty board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts '-----------'
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts '-----------'
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# Takes user input and converts it to an integer that can be read as an index
def input_to_index(user_input)
  user_input.to_i - 1
end

# Takes the newly converted index and determines where the player takes their turn
def move(board, index, current_player = "X")
  board[index] = current_player
end

# Verifies that the input from the user is not within an already occupied space
def position_taken?(board, location)
  board[location] != " " && board[location] != ""
end

#Verifies that the number given is within the proper range of spaces
def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(board, index)
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end

# Define your play method below
def play(board)
  counter = 1

  until counter == 10
    turn(board)
    counter += 1
  end

end

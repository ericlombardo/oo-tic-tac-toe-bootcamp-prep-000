# creates class for TicTacToe
class TicTacToe
  # creates #initialize
  def initialize
    # assigns new empty array @board variable
    @board = Array.new(9, " ")
  end

  # creates a constand WIN_COMBINATIONS and assigns array of winning combinations
  WIN_COMBINATIONS = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [2, 4, 6]
  ]

  # creates #display_board and prints current board based on @board array
  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end

  # creates #input_to_index that takes user input
  def input_to_index(input)
    # changes string to integer and subtracts 1 to make zero indexed
    index = input.to_i - 1
  end

  # creates #move that takes index in the @board array and players tolken (default is "X")
  def move(index, tolken = "X")
    # logs move
    @board[index] = tolken
  end

  # creates #position_taken?
  def position_taken?(index)
  # if position has "X" or "O" => true : false
  @board[index] == "X" || @board[index] == "O" ? true : false
  end

  # creates #valid_move? and takes a position
  def valid_move?(position)
    # if position is not taken and between 0 - 8 ? true : false
    position_taken?(position) == false && position.between?(0, 8) ? true : false
  end

  # creates #turn to include protical for one full move
  def turn(position)
    puts "Please enter spot 1-9"
    user_input = gets.chomp
    user_index = input_to_index(user_input)
    if valid_move?(position) == true
      move(position, current_player)
      display_board
    else
      turn(position)
    end
  end
  # asks user for move between 1 - 9
  # Receives input
  # Translate input into index value
  # If move valid, make move, display board
  # if move invalid ? run turn again until valid_move

  # creates #turn_count
  def turn_count
    # sets counter
    count = 0
    # loops through each element in @board array
    @board.each do | space |
      # if it is not empty add one to the counter
      if space != " "
        count += 1
      end
    end
    # return the count
    return count

  end

  # creats current_player
  def current_player
    # uses turn_count to see if "X" or "O" turn
    turn_count % 2 == 0 ? "X" : "O"
  end

  # creates #won?
  # winning combo present ? winning combo array : false

  # creates #full?
  # checks to see if all in @board are "X" or "O"

  # creates #draw?
  # board == full && win == false ? true : false

  # creates #over?
  # draw || won ? true : false

  # creates #winner
  # => "X" or "O" if there is a winner

  # creates #play (the main function)
  # until game is over
  # take turns
  # if game is won
  # congrats winner
  # else if draw
  # tell player ended in draw
end

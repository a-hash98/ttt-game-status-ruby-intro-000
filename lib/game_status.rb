# Helper Method

board = ["X", "X", "X", "O", "O", " ", " ", " ", " "]


def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]

]

def won?(board)
  WIN_COMBINATIONS.select do |win_combination|
    winner = win_combination.all? do |win_num|
      position_taken?(board,win_num)

    end


    if winner
      win_combination do |num| board[num].is_a?("X")
      puts "yes"
      puts board
      return true
      end
    elsif winner
      win_combination do |num| board[num].is_a?("O")
      puts "yes"
      puts board
      returns true
    end

    else
      puts "no"
      puts board
      return false

    end
   end
 end

won?(board)

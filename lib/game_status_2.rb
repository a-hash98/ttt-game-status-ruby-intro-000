board = [" "," "," ","X","X","X", " ", " ", " "]


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
store_winner = Array.new
    if board.all?{|j| j  == " "}
      return false
    end

    WIN_COMBINATIONS.each do |win_com|

      if win_com.all?{|i| board[i] == "X"} || win.com?{|i| board[i] == "O"}
        return win_com
      else
        next



        
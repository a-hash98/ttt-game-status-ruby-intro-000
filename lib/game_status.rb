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
  WIN_COMBINATIONS.each do |single_combination|
    all_X = single_combination.all? do |each_num|
      index = each_num.to_i
      position_taken?(board,index)
    puts all_X
    end
  end
end

won?(board)

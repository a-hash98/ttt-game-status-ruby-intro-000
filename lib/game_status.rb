# Helper Method

board = [" ", " ", " ", "O", "O", " ", " ", " ", " "]


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
  arr = false
  WIN_COMBINATIONS.each do |single_combination|

    single_combination.select do |number|
       arr = board[number].include?("X")
    end
    if arr != nil || arr != false || arr != " "
      print "winning combo"
    end

  end
end


      #puts(position_taken?(board,each_num))
won?(board)

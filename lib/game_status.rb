# Helper Method

board = ["X","X","X","X","X","X", "X", "X", "X"]


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
#def get_match(board,index_list,symbol)
#  index_list.select {|i| i }

#  end
#end


def won?(board)

  WIN_COMBINATIONS.each do |win_com|
    if win_com.all?{|i| board[i] == "X"} || win.com?{|i| board[i] == "O"}

      return win_com
   end
 end
end

def full?(board)
  if board.any{|i| i == " "}
    return false
  else
    return true
  end
end

full?(board)

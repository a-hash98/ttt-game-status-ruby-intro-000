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

WINNER = [
  [0,1,2],
  [6,7,8]
  ]

def won?(board)
  WIN_COMBINATIONS.each do |win|
    if win.all?{|i| board[i] == "X"} || win.all?{|i| board[i] == "O"}
      print "yes"
      return true
   end
 end
end


boarda = ["X", "X", "X"]

def wona(boarda)
  if boarda.all?{|i| i  == "X"}
    print "yes"
  end
end

won?(board)

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

    if board.all?{|j| j  == " "}
      return false
    end

    if WC.all?{|i| board[i] == "X"} || WC.all?{|i| board|i| == "O"}
        print WC
    else
       print "sth else"
    end
end

won?(board)

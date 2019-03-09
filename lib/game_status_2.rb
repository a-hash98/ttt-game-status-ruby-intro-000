board = ["X","O","O","X","O","X","X","X","O"]


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

WC = [3,4,5]

def won?(board)

    if board.all?{|j| j  == " "}
      return false
    end

    WIN_COMBINATIONS.each do |w|
    if w.all?{|i| board[i] == "X"} || w.all?{|i| board[i] == "O"}
        print w
        return w
    else
       next
    end
  end

  return false

end

won?(board)

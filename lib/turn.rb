def valid_move?(board, index)
if index <0 || index >8
  return false
end
if !(position_taken?(board, index))
  return true
end 
end

def position_taken?(board,index)
   if board[index]== " " || board[index] == "" || board[index]== nil
     return false
  else return true 
end
end

 def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
 end
def input_to_index(string)
  index= string.to_i-1
end
def move(board, index,token= "X")
  board[index]= token
end
def turn(board)
  puts "Please enter 1-9:"
 index=gets.strip
input_to_index(index)
 puts index
end
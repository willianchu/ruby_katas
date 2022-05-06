def generate_empty_board()
   Array.new(8) { Array.new(8, 0) }
end

def positioning_queen(board, queen1, queen2)
  board[queen1[0]][queen1[1]] = 1
  board[queen2[0]][queen2[1]] = 1
end

def print_board(board)
  board.each do |row|
    puts row.join(" ")
  end
end

def is_equal_rows_or_columns(queen1, queen2)
  queen1[0] == queen2[0] || queen1[1] == queen2[1]
end

def absolute(value)
  value < 0 ? -value : value
end

def is_equal_diagonals(queen1, queen2)
  if absolute(queen1[0] - queen2[0]) == absolute(queen1[1] - queen2[1])
    true
  else
    false
  end
end

def check_if_queen_treat(board, queen1, queen2)
  treat = false
  if is_equal_rows_or_columns(queen1, queen2)
    treat = true
  elsif is_equal_diagonals(queen1, queen2)
    treat = true
  end
  treat
end

board = generate_empty_board()
white_queen = [0, 5]
black_queen = [5, 0]

positioning_queen(board, white_queen, black_queen)

print_board(board)

puts check_if_queen_treat(board, white_queen, black_queen)

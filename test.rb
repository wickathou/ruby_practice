

def print_board
  board = Array.new(10).fill(nil)
  col_separator, row_separator = " | ", "--+---+--"
  # label_for_position = lambda{|position| board[position] ? board[position] : position}
  #
  # row_for_display = lambda{|row| row.map{|position| board[position] ? board[position] : position}.join(col_separator)}
  row_positions = [[1,2,3], [4,5,6], [7,8,9]]
  puts rows_for_display = row_positions.map{|row| row.map{|position| board[position] ? board[position] : position}.join(col_separator)}
  puts "\n"
  puts rows_for_display.join("\n" + row_separator + "\n")
end

print_board


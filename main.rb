require_relative "matriz.rb"
puts("Enter the height value: ")
height=gets.chomp.to_i
 
puts("Enter the width value: ")
width=gets.chomp.to_i

matrix = Create_Matrix.new(height,width)
matrix.generate_matrix
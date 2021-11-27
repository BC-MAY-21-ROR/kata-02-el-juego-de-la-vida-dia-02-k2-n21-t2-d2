# frozen_string_literal: true

require_relative 'matriz'
puts('Enter the height value: ')
height = gets.chomp.to_i

puts('Enter the width value: ')
width = gets.chomp.to_i

matrix = CreateMatrix.new(height, width)
matrix.generate_matrix

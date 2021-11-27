# frozen_string_literal: true

require_relative 'celula'
# Class to generate a matrix full of celulas
class CreateMatrix
  def initialize(height, width)
    @pers = Array.new(height) { Array.new(width) }
    @height = height
    @width = width
  end

  def generate_matrix
    @height.times do |x|
      @width.times do |y|
        num = rand(2)
        celula = Celula.new(num)
        @pers[x][y] = celula
        print @pers[x][y].celula_status
      end
      puts
    end
    matrix2 = @pers
    @height.times do |x|
      @width.times do |y|
        vecino = 0

        next unless x >= 0 && x <= @height

        if y >= 0 && y <= @width
          if x != 0 && y != 0
            vecino += 1 if matrix2[x - 1][y - 1].cell_status == 1
            if @width != y + 1 
                vecino += 1 if matrix2[x - 1][y + 1].cell_status == 1
            end
            vecino += 1 if @height != x + 1 && (matrix2[x + 1][y - 1].cell_status == 1)
            vecino += 1 if matrix2[x - 1][y].cell_status == 1
            vecino += 1 if matrix2[x][y - 1].cell_status == 1

            vecino += 1 if @width != y + 1 && @height != x + 1 && (matrix2[x + 1][y + 1].cell_status == 1)
          end
          if @width != y + 1
            vecino += 1 if matrix2[x][y + 1].cell_status == 1
          end
          vecino += 1 if @height != x + 1 && (matrix2[x + 1][y].cell_status == 1)
        end
        print x, y
        p vecino
      end
    end
  end
end

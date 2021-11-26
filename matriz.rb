require_relative "celula.rb"
class Create_Matrix 
    def initialize(height, width)
       @pers = Array.new(height){Array.new(width)}
       @height = height
       @width = width
     
       end
       def generate_matrix
            @height.times do |x|
            @width.times do |y|
             num = rand(2)
             celula = Celula.new(num)
             @pers[x][y]= celula
             print @pers[x][y].celula_status
           end
           puts
       end
   end
 end
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
             @pers[x][y]= num
             if @pers[x][y] == 1
               print ("*")
            
             else
               print (".")
             end
           end
           puts
       end
   end
 end
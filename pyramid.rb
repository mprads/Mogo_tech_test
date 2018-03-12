sample = [1,2,3,4,5,6]

class Pyramid
  def initialize(array)
    @array = array
    @index = 0
    @direction = :right
  end
  
  def print
    if @array.instance_of? Array
      if @index < @array.length && @direction == :right
        output = "<#{@array[@index]}>"
        puts output.rjust(output.length + @index, ' ')
        if @index == @array.length - 1
          @direction = :left
        else
          @index += 1
        end
        print
      elsif @index >= 0 && @direction == :left
        output = "</#{@array[@index]}>"
        puts output.rjust(output.length + @index, ' ')
        @index -= 1
        print
      end
    else
    puts 'Please make sure you are passing an array to the class'
    end
  end
end

pyramid = Pyramid.new(sample);
pyramid.print
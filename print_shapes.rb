class Shape
  def initialize(line_length)
    @line_length = line_length.to_f
  end
  
  def perimeter
    puts 'Perimeter not yet implemented or shape does not use this method'
  end

  def circumference
    puts 'Circumference not yet implemented or shape does not use this method'
  end

  def area
    puts 'Area not yet implemented'
  end
end

class Square < Shape
  def area
    @line_length ** 2
  end
  
  def perimeter
    @line_length * 4
  end
end

class Pentagon < Shape
  def area
    (1.0 / 4.0) * Math.sqrt(5 * (5 + (2 * Math.sqrt(5)))) * (@line_length ** 2)
  end
  
  def perimeter
    @line_length * 5
  end
end

class Triangle < Shape
  def area
    (Math.sqrt(3) / 4) * (@line_length ** 2)
  end
  
  def perimeter
    @line_length * 3
  end
end

class Circle < Shape
  def area
    Math::PI * (@line_length ** 2)
  end
  
  def circumference
    2 * Math::PI * @line_length
  end
end

def print_shape_details(file_path)
  raw_data = File.new(file_path, 'r')
  rows = raw_data.map { |row| row.split(',')}
  rows.each_with_index do |row, i|
    next if i == 0
    case row[0]
      when 'square'
        area = Square.new(row[1]).area
        perimeter = Square.new(row[1]).perimeter
        puts "Shape #{i} is a #{row[0]}, with a side length #{row[1].to_i}, having a perimeter of #{perimeter} and an area of #{area.round(2)} units sqare"
      when 'pentagon'
        area = Pentagon.new(row[1]).area
        perimeter = Pentagon.new(row[1]).perimeter
        puts "Shape #{i} is a #{row[0]}, with a side length #{row[1].to_i}, having a perimeter of #{perimeter} and an area of #{area.round(2)} units sqare"
      when 'triangle'
        area = Triangle.new(row[1]).area
        perimeter = Triangle.new(row[1]).perimeter
        puts "Shape #{i} is a #{row[0]}, with a side length #{row[1].to_f}, having a perimeter of #{perimeter} and an area of #{area.round(2)} units sqare"
      when 'circle'
        area = Circle.new(row[1]).area
        circumference = Circle.new(row[1]).circumference
        puts "Shape #{i} is a #{row[0]}, with a radius of #{row[1].to_i}, having a circumference of #{circumference.round(2)} and an area of #{area.round(2)} units sqare"
      else 
        puts 'Sorry, shape not handled'
    end
  end
end

print_shape_details('sample.csv')

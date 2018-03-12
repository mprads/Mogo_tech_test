def print_shapes(file_path)
  raw_data = File.new(file_path, 'r')
  rows = raw_data.map{ |row| row.split(',')}
  rows.each_with_index do |row, i|
    next if i == 0
    case row[0]
      when 'square'
        square(row, i)
      when 'pentagon'
        pentagon(row, i)
      when 'triangle'
        triangle(row, i)
      when 'circle'
        circle(row, i)
      else 
        puts 'Sorry, shape not handled'
    end
  end
end

def square(row, index)
  shape = row[0]
  line_length = row[1].to_f
  perimeter = line_length * 4
  area = line_length ** 2
  puts "Shape #{index} is a #{shape}, with side length #{line_length}, having a perimeter of #{perimeter} and an area of #{area.round(2)} units sqare"
end

def pentagon(row, index)
  shape = row[0]
  line_length = row[1].to_f
  perimeter = line_length * 5
  area = (1.0 / 4.0) * Math.sqrt(5 * (5 + (2 * Math.sqrt(5)))) * (line_length ** 2)
  puts "Shape #{index} is a #{shape}, with side length #{line_length}, having a perimeter of #{perimeter} and an area of #{area.round(2)} units sqare"
end

def triangle(row, index)
  shape = row[0]
  line_length = row[1].to_f
  perimeter = line_length * 3
  area = (Math.sqrt(3) / 4) * (line_length ** 2)
  puts "Shape #{index} is a #{shape}, with side length #{line_length}, having a perimeter of #{perimeter} and an area of #{area.round(2)} units sqare"
end

def circle(row, index)
  shape = row[0]
  line_length = row[1].to_f
  perimeter = 2 * Math::PI * line_length
  area = Math::PI * (line_length ** 2)
  puts "Shape #{index} is a #{shape}, with radius of #{line_length}, having a circumference of #{perimeter.round(2)} and an area of #{area.round(2)} units sqare"
end

print_shapes('sample.csv')
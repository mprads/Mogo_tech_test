sample = [1,2,3,4,5,6]

def pyramid(array, index = 0)
  return if index == array.length
  value = array[index].to_s
  puts " " * index + "<" + value + ">"
  pyramid(array, index + 1)
  puts " " * index + "</" + value + ">"
end

pyramid(sample)
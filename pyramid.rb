sample = [1,2,3,4,5,6]

def pyramid(array, index = 0)
  if array.instance_of? Array
    return if index == array.length
    value = array[index].to_s
    puts ' ' * index + '<' + value + '>'
    pyramid(array, index + 1)
    puts ' ' * index + '</' + value + '>'
  else 
    puts 'Sorry this method only accepts arrays.'
  end
end

pyramid(sample)
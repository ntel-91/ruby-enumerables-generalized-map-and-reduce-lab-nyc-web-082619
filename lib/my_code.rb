def map(source_array)
  new = []
  i = 0 
  while i < source_array.length do 
    new.push(yield(source_array[i]))
    i += 1 
  end
  return new
end



def reduce(source_array, starting_point=0 )
  i = 0
  new = starting_point
  while i < source_array.length do 
    if !source_array[i]
      return false 
    else new = new + source_array[i]
    end
    i += 1
  end
  
  return new
end



def make_sandwich(element1, element2) 
  yield("A #{element1} and #{element2} sandwich")
end

make_sandwich("ham", "cheese") do |innards|
  "#{innards} on rye."
end








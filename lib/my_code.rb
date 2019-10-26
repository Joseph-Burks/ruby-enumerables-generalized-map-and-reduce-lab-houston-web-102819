def map(array)
  new = []
  i = 0
  while i < array.length
    new << (yield(array[i]))
    i += 1
  end
  new
end

def reduce(array, start_point=nil)
  if start_point
    total = start_point
  else
    total = 0
  end
  i = 0
  while i < array.length
    total = yield(total, array[i])
    i += 1
  end
  total
end
  
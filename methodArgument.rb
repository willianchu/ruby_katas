def take(arr,len=1)
  arr.drop(len)
end

def take(a, x=1)
  x.times { a.shift }
  a
end

def take(array, pos=1)
  array[pos..-1]
end

#slice

def take(array, pos=1)
  array.slice(pos..-1)
end

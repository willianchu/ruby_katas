arr = [9, 5, 1, 2, 3, 4, 0, -1]

#negative indexing
arr[-1]
#  => -1
# The first element of the array can be accessed using
 arr.first
#  => 9
# The last element of the array can be accessed using
 arr.last
#  => -1
# The first n elements of the array can be accessed using
 arr.take(3)
#  => [9, 5, 1]
# Everything but the first n elements of the array can be accessed using
 arr.drop(3)
#  => [2, 3, 4, 0, -1]

#Solution
def neg_pos(arr, index)
  # return the element of the array at the position `index` from the end of the list
  # Clue : arr[-index]
  arr[-index]
end

def first_element(arr)
  # return the first element of the array
  # arr.first
  arr.first
end

def last_element(arr)
  # return the last element of the array
  # arr.last
  arr.last
end

def first_n(arr, n)
  # return the first n elements of the array
  arr.take(n)
end

def drop_n(arr, n)
  # drop the first n elements of the array and return the rest
  arr.drop(n)
end

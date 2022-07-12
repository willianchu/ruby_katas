def prime? number
  return false if number < 2
  (2..Math.sqrt(number)).each do |i|
    return false if number % i == 0
  end
  true  
end

def undivisible number
  divisible = false
  for i in (number-1)..1 do
    if number % i == 0
        divisible = true
  end
  divisible? true : false
end

def prime? number
  if number>1 && undivisible(number) 
    true
  else
    false
  end
end
def onePeakMoutain(arr)
  isClimbing = true
  lastValue = arr[0]
  arr.each do |value|
    if value < lastValue
      isClimbing = false
      lastValue = value
    elsif value > lastValue
      if isClimbing == false
        return false
      end
      lastValue = value
    end
  end
  true
end







landscape = [ 1,2,3,3,4,5,6,7,7,8,9,9,9,9,8,8,7,7,6,5,4,3,3,2,1 ]

puts onePeakMoutain(landscape)
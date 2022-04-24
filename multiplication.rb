def multiplication_table(number)
  number.times do |i|
    number.times do |j|
      print "#{(i+1) * (j+1)} "
    end
    puts
  end
end

multiplication_table(1)
multiplication_table(5)
multiplication_table(10)
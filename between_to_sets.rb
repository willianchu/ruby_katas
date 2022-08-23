def getTotalX(a, b)
    all_match_array = []
    range = (a.min()..b.max()).to_a
    range.each do |i| 
        all_divisible = true
        a.each do |element|
            if ( i % element) != 0
                all_divisible = false
                break
            end
        end
        if all_divisible
            b.each do |element|
                result = element % i
                if (result != 0)
                    all_divisible = false
                    break
                end    
            end
            all_match_array.push(i) if all_divisible == true
        end
    end
    all_match_array.length()
end

puts getTotalX([1], [100])
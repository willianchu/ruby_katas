#
# Complete the 'getTotalX' function below.
#
# The function is expected to return an INTEGER.
# The function accepts following parameters:
#  1. INTEGER_ARRAY a
#  2. INTEGER_ARRAY b
#

def getTotalX(a, b)
    first_number = a.min()
    last_number = b.max()
    answer_array = []
    for i in first_number...last_number
        all_divisible = true
        a.each do |element|
            if ( i % element) != 0
                all_divisible = false
                break
            end
        end
        if all_divisible
            b.each do |element|
                if ( i % element) != 0
                    all_divisible = false
                    break
                end
            end    
            if all_divisible
                answer_array.push(i)
            end
        end 
        answer_array.length()    
    end
    

end


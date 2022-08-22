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
    all_match_array = []
    for i in first_number...last_number
        all_divisible = true
        a.each do |element|
            if ( i % element) != 0
                all_divisible = false
                break
            end
        end
        if all_divisible
            all_match_array.push(i)
        end
    end
    answer_array = []
    result = 0
    all_match_array.each do |number|
        all_divisible = true
        b.each do |element|
            result = element % number
            if (result != 0)
                all_divisible = false
                break
            end    
        end
        if all_divisible == true
            answer_array.push(number)
        end
    end
    answer_array.length()
end


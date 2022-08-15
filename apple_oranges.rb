#
# Complete the 'countApplesAndOranges' function below.
#
# The function accepts following parameters:
#  1. INTEGER s
#  2. INTEGER t
#  3. INTEGER a
#  4. INTEGER b
#  5. INTEGER_ARRAY apples
#  6. INTEGER_ARRAY oranges
#

def countApplesAndOranges(s, t, a, b, apples, oranges)
    
    fallen_oranges_in_range = 0
    fallen_apples_in_range = 0

    throwed_apples_real_distance = apples.map {|relative_distance| 
        a + relative_distance
    }
    throwed_oranges_real_distance = oranges.map {|relative_distance|
        b + relative_distance
    }
    throwed_apples_real_distance.each {|drop|
        if drop >= s && drop <= t
          fallen_apples_in_range = fallen_apples_in_range + 1 
        end
    }
    throwed_oranges_real_distance.each {|drop|
      if drop >= s && drop <= t
        fallen_oranges_in_range += 1 
      end
    }
    puts fallen_apples_in_range
    puts fallen_oranges_in_range
    
end
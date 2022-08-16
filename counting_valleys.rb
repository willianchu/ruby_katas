def countingValleys(steps, path)
  count_valleys = 0
  sea_level = 0
  path.each { |step|
      if step == "U"
          sea_level += 1
          if sea_level = 0
              count_valleys += 1
          end
      elsif step == "D"
          sea_level -= 1
      end
      
  }  
  count_valleys
end

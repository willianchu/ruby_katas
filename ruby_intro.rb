# <code> until <condition> one line answer
# print self # main
# .even? 

def identify_class(obj)
  # write your case control structure here
  
  case obj 
  when Hacker
      puts "It's a Hacker!"
  when Submission
      puts "It's a Submission!"
  when TestCase
      puts "It's a TestCase!"
  when Contest
      puts "It's a Contest!"
  else
      puts "It's an unknown model"
  end
end


# better

def identify_class2(obj)
  case obj
  when Hacker,Submission,TestCase,Contest
      puts "It's a #{obj.class}!"
  else
      puts "It's an unknown model"
  end
end




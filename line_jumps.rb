# Complete the 'kangaroo' function below.
#
# The function is expected to return a STRING.
# The function accepts following parameters:
#  1. INTEGER x1 - starting position of kangaroo 1
#  2. INTEGER v1 - jump distance of kangaroo 1
#  3. INTEGER x2 - starting position of kangaroo 2
#  4. INTEGER v2 - jump distance of kangaroo 2
#

def kangaroo(x1, v1, x2, v2)
  divide_by = (v2 - v1) == 0 ? 1 : (v2 - v1)
  distance = (x1 - x2) / divide_by
  complete_jump = (x1 - x2) % divide_by
  distance > 0 && complete_jump == 0 ? "YES" : "NO"
end


# Jumping Clouds
###################################### 

require 'json'
require 'stringio'

# Complete the jumpingOnClouds function below.
def jumpingOnClouds(c)
  count = i = 0

  while(1) do
    first_next = c[i + 1]
    second_next = c[i + 2]

    break if first_next.nil?

    if second_next == 0
      i = i + 2
    elsif first_next == 0
      i = i + 1
    end

    count = count + 1
  end

  return count
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.to_i

c = gets.rstrip.split(' ').map(&:to_i)

result = jumpingOnClouds c

fptr.write result
fptr.write "\n"

fptr.close()

# Jumping Clouds
###################################### 

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

exam1 = fn
  0, 0, _ -> "FizzBuzz"
  0, _, _ -> "Fizz"
  _, 0, _ -> "Buzz"
  _, _, c -> c
end

result = exam1.(1, 1, 3)
IO.puts(result)

# rem(a,b) # remaninder

# exam2 = fn n ->
#   exam1.(rem(n, 3), rem(n, 5), n)
# end

# 11 => 2,1,11

# 12 => 0,2,12 => "Fizz"

# 13 => 1,3,13
# 14 => 2,4,14

# 15 => 0,0,15 => "FizzBuzz"

# 16 => 1,5,16

# values = [1, 2, 3, 4, 5]

# # with 는  함수나, 내크로를 호출할 때, 여러개의 변수를 선언하고, 그 변수를 사용할 수 있게 해준다.
# # 첫 번째 인자는, 무조건 with와 한 줄로 써야 한다.
# mean = with count = Enum.count(values), sum = Enum.sum(values), do: sum / count

# IO.puts(mean)

# # make function
# fn
#   paramater - list -> body
#   paramater - list -> body
# end

# sum = fn a, b -> a + b end
# IO.puts(sum.(1, 2))

# greet = fn -> IO.puts("Hello") end
# greet.()

# f1 = fn a, b -> a * b end
# f2 = fn -> 99 end
# IO.puts(f1.(5, 6))

# swap = fn {a, b} -> {b, a} end
# swap.({1, 2})

list_concat = fn list1, list2 -> list1 ++ list2 end
list_concat.([:a, :b], [:c, :d])
# => [:a, :b, :c, :d]

sum = fn a, b, c -> a + b + c end
sum.(1, 2, 3)
# => 6

pair_tuple_to_list = fn {a, b} -> [a, b] end
pair_tuple_to_list.({1234, 5678})
# => [ 1234, 5678 ]

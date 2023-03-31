############################################
fun1 = fn -> fn -> "Hello" end end
############################################
fun1.()
# Function<erl_eval.6.99386804/0 in :erl_eval.expr/5>
fun1.().()
# => "Hello"

other = fun1.()
other.()
# => "Hello"

############################################
greeter = fn name -> fn -> "Hello #{name}" end end
############################################
greeter.("world").()
# => "Hello world"

# 이전 인자를 저장하고 있음
dave_greeter = greeter.("Dave")
jinho_greeter = greeter.("Jinho")
# => "Hello Dave"
dave_greeter.()
# => "Hello Jinho"
jinho_greeter.()

add_n = fn n -> fn other -> n + other end end
add_1 = add_n.(1)
add_1.(2)

############################################
# 문자열을 받아서 prefix를 붙여주는 함수
prefix = fn prefix -> fn text -> "#{prefix} #{text}" end end
############################################
mrs = prefix.("Mrs")
mrs.("Jinho")
prefix.("Elixir").("Rocks")
# => "Elixir Rocks"

############################################
# 함수를 인자로 전달
############################################
times_2 = fn n -> n * 2 end
apply = fn fun, value -> fun.(value) end
# times_2.(3)
apply.(times_2, 3)

# Enum module 속의 map() 함수 사용.
list = [1, 3, 5, 7, 9]
Enum.map(list, fn elem -> elem * 2 end)
Enum.map(list, fn elem -> elem * elem end)
Enum.map(list, fn elem -> elem > 6 end)

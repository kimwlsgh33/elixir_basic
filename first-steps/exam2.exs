fun1 = fn -> fn -> "Hello" end end
fun1.()
# Function<erl_eval.6.99386804/0 in :erl_eval.expr/5>
fun1.().()
# => "Hello"

other = fun1.()
other.()
# => "Hello"

greeter = fn name -> fn -> "Hello #{name}" end end
greeter.("world").()
# => "Hello world"

# 이전 인자를 저장하고 있음
dave_greeter = greeter.("Dave")
jinho_greeter = greeter.("Jinho")
# => "Hello Dave"
dave_greeter.()
# => "Hello Jinho"
jinho_greeter.()

# 1~n 정수의 합을 구하는 sum()
defmodule Calculator do
  def sum(1), do: 1
  def sum(n), do: n + sum(n - 1)
  # 음이 아닌 두 정수의 최대공약수
  def gcd(x, 0), do: x
  def gcd(x, y), do: gcd(y, rem(x, y))
end

# 10 + ?
# 9 + ?
# 8 + ?
# ...
# 3 + ?
# 2 + ?
# 1 => 1
# 2 + 1 => 3
# 3 + 3 => 6
# 4 + 6 => 10
# ...
# 10 + ...

# rem(x,y) : x를 y로 나눈 나머지 => 0 이면, 나눈 y가 최대공약수
# y = 0, x
# gcd(y, rem(x,y))

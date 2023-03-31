# 10 * 9 * 8 * ... * 1
defmodule Factorial do
  def of(0), do: 1
  def of(n) when is_integer(n) and n > 0, do: n * of(n - 1)
  # def of(n), do: "You Can't Factorial #{n}"
end

# 재귀 설계 하기
# 정해진 답이 있는, 가장 간단한 경우 찾기
# 그곳에서 시작해, 호출을 끝내는 재귀적인 답 찾기
# 처음과 끝을 정한다.

# 1~n 까지의 자연수 합
# 0개 : 0
# n개 : n-1까지의 합 + n

# 리스트의 길이
# 빈 : 0
# 나머지 : 1 + 꼬리부분(Tail) 길이

# defmodule Factorial do
#   def of(0), do: 1

#   def of(n) do
#     if n < 0 do
#       raise "factorial called on a negative number"
#     else
#       n * of(n - 1)
#     end
#   end
# end

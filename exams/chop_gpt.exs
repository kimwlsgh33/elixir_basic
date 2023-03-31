# 1 ~ 1000 숫자 맞추기
# 최댓값 , 최솟값의 중간값 추정
# 추정값과 비교, 범위 나누기
defmodule Chop do
  def guess(actual, range) do
    # 범위 최대최소 매칭
    a..b = range

    # 최대값 나누기 2
    guess = div(a + b, 2)
    IO.puts("Is It #{guess}")

    # 비교하기
    helper(actual, guess, range)
  end

  # actual : 맞힐 값 ( 맞혀봐! )
  def helper(actual, guess, range) do
    case do
      () ->
        nil
    end
  end
end

Chop.guess(273, 1..1000)
# Is It 500
# Is It 250
# Is It 375
# Is It 312
# Is It 281
# Is It 265
# Is It 273
# 273
# defmodule Chop do
#   def guess(target, range) do
#     # range에 first 요소와 last요소 접근
#     guess_rec(target, range.first, range.last)
#   end

#   # 첫요소가 마지막 요소보다 작을 때 실행
#   defp guess_rec(target, low, high) when low <= high do
#     # (최소 + 최대)/2 = 중간
#     mid = div(low + high, 2)
#     case target <=> mid do
#       1 -> guess_rec(target, mid + 1, high)
#       -1 -> guess_rec(target, low, mid - 1)
#       0 -> mid
#     end
#   end

#   defp guess_rec(_target, _low, _high) do
#     :error
#   end
# end

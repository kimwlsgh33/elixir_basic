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
  def helper(actual, guess, _) when actual == guess do
    IO.puts(guess)
  end

  # 에측한 수가, 실제보다 작을때
  def helper(actual, guess, _..x) when actual > guess do
    guess(actual, guess..x)
  end

  # 에측한 수가, 실제보다 클때
  def helper(actual, guess, x.._) when actual < guess do
    guess(actual, x..guess)
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

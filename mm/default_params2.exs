# default parameter for many func - 기본값을 사용하는 것을 정확히 명시한다.
# 첫번째 정의한 기본 값이, 모든 구현체에 적용됨
defmodule Params do
  def func(p1, p2 \\ 123)

  def func(p1, p2) when is_list(p1) do
    "You said #{p2} with a list"
  end

  def func(p1, p2) do
    "You passed in #{p1} and #{p2}"
  end
end

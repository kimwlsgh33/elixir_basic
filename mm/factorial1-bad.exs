defmodule BadFactorial do
  # Elixir는 함수의 구현체가 여러개 일대, 위에서 아래로 내려가면서 패턴 마칭을 실행하는데, 이 형식을 사용하면 무한 재귀에 빠지게 된다. ( 조건이 항상 만족하므로 )
  def of(n), do: n * of(n - 1)
  def of(0), do: 1
end

# module!!! 코드를 일정한 구조로 정리
# Elixir는, 여러 기명함수를 하용해 코드를 나눈다.
# 이 나누어진 함수들을 module로 묶어 정리한다.
defmodule Times do
  # def double(n), do: n * 2
  def double(n) do
    n * 2
  end

  def triple(n), do: n * 3

  # 같은 module 속의 다른 함수 실행가능 
  def quadruple(n), do: double(double(n))
end

# Times.double 함수를 지칭 할 때는, double/1 이라고 부른다. ( 함수이름/인자의 개수 )
# Elixir는, 인자의 개수가 다르면 함수의 이름이 같아도 다른 함수로 취급하므로 주의!!!

# iex times.exs 명령어 사용해서, 입력창을 띄우기 전에 파일을 컴파일 해둘 수 있다.

# 엘릭서 기본 문법, 가독성을 이유로 위와 같이 쓰고, 아래의 형태로 변환한다.
# defmodule Times, do: (def double(n) do: n * 2)

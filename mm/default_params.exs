defmodule Example do
  def func(p1, p2 \\ 2, p3 \\ 3, p4) do
    IO.inspect([p1, p2, p3, p4])
  end
end

# 인자수 < 필수 파라미터 수 : Error!!
# 인자수 = 필수 파라미터 수
# p1, p4
Example.func("a", "b")
# 인자수 > 필수 파라미터 수
# p1, p2, p4
Example.func("a", "b", "c")
# p1, p2, p3, p4
Example.func("a", "b", "c", "d")

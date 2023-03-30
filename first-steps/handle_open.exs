# 외부 함수의 에러 처리를, 함수 내부에서 처리
handle_open = fn
  {:ok, file} -> "Read data: #{IO.read(file, :line)}"
  # :ok를 제외한 모든 경우에 대해, 에러 처리 (_)
  # :file - erlang module, :format_error - erlang function
  {_, error} -> "Error: #{:file.format_error(error)}"
end

IO.puts(handle_open.(File.open("test.txt")))
IO.puts(handle_open.(File.open("no_file")))

# iex> c "handle_open.exs"
# $> elixir handle_open.exs

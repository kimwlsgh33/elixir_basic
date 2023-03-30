content = "Now is the time"

# open file
postgres =
  with {:ok, file} = File.open("/etc/passwd"),
       # read file ( temp variable )
       content = IO.read(file, :all),
       # close file
       :ok = File.close(file),
       # match regex ( exaclty 3 matches )
       [_, uid, gid] = Regex.run(~r/^_postgres:.*?:(\d+):(\d+)/m, content) do
    "GID #{gid}, UID #{uid}"
  end

IO.puts(postgres)
IO.puts(content)

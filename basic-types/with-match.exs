result =
  with {:ok, file} = File.open("/etc/passwd"),
       content = IO.read(file, :all),
       :ok = File.close(file),
       # if the regex doesn't match, the whole with expression will fail
       [_, uid, gid] <- Regex.run(~r/^xxx:.*?:(\d+):(\d+)/, content) do
    "Group: #{gid}, User: #{uid}"
  end

IO.puts(result)

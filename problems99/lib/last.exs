# last = fn (list) -> IO.puts(List.last(list)) end
# last = &(&1 |> List.last("Empty list") |> IO.puts)

last = fn 
  ([]) = list -> list |> List.last("Empty list") |> IO.puts
  ([_ | _]) = list -> list |> List.last("Empty list") |> IO.puts
  _ -> IO.puts("Not a list")
end

last.([1, 2, 3])
last.([])
last.(%{:id => 1})

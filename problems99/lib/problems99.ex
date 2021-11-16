defmodule Problems do
  def last(list) when is_list(list) do
    list
    |> List.last("Empty list")
    |> IO.puts
  end

  def last(_) do
    IO.puts("Not a list")
  end
end

Problems.last([1, 2, 3])
Problems.last([])
Problems.last({:id, 1})

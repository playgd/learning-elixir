defmodule Problems do
  @spec last(list) :: no_return

  def last(list) when is_list(list) do
    {:ok, list |> List.last("Empty list")}
  end

  def last(_) do
    {:error, "Not a list"}
  end

  def recursive_last([]), do: {:error, "Empty list"}
  def recursive_last([item]), do: item
  def recursive_last([_head | tail]) do
    recursive_last(tail)
  end
  def recursive_last(_), do: "Cara, isso não é uma lista. Tá me tirando?"
end

Problems.last([1, 2, 3]) |> IO.inspect
Problems.last([]) |> IO.inspect
Problems.last({:id, 1}) |> IO.inspect
Problems.recursive_last([1, 2, 3]) |> IO.inspect
Problems.recursive_last([]) |> IO.inspect

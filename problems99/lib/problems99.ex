defmodule Problems do
  @spec last(list) :: no_return

  def last(list) when is_list(list) do
    {:ok, list |> List.last("Empty list")}
  end

  def last(_) do
    {:error, "Not a list"}
  end
end

Problems.last([1, 2, 3]) |> IO.inspect
Problems.last([]) |> IO.inspect
Problems.last({:id, 1}) |> IO.inspect

defmodule LastTwo do
  def make([]), do: {:error, "Empty list"}
  def make([_]), do: {:error, "Only one item"}

  def make([penultimate, last]) do
    {:ok, [penultimate, last]}
  end

  def make([_head | tail] = list) when is_list(list) do
    make(tail)
  end

  def make(_) do
    {:error, "Não é uma lista. Tá me tirando? TaMeTirandoException"}
  end
end

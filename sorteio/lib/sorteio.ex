defmodule Sorteio do
  def start(file_name) when is_binary(file_name) do
    file_name
    |> File.read()
    |> handle_file_read()
  end

  defp handle_file_read({:ok, file}) do
    file
    |> String.replace(~r/\n$/, "")
    |> String.split("\n")
    |> tl()
    |> Enum.map(&manipulate_row/1)
    |> Enum.uniq_by(&(&1.discord))
    |> Enum.random()
    |> get_result_phrase()
  end

  defp handle_file_read({:error, reason}) do 
    {:error, "Deu erro: #{reason}"}
  end

  defp manipulate_row(row) do
    row
    |> String.split(",")
    |> manipulate_column()
  end

  defp manipulate_column([_timestamp, _email, name, discord, twitch]) do
    %{
      :name => name,
      :discord => discord,
      :twitch => twitch,
    }
  end

  defp get_result_phrase(%{:discord => discord, :name => name}) do 
    "Parabéns #{name} (#{discord})! Você ganhou alguma coisa!"
  end
end

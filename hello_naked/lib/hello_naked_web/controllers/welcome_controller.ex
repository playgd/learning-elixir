defmodule HelloNakedWeb.WelcomeController do
  use HelloNakedWeb, :controller

  def show(conn, _params) do
    conn
    |> put_status(:not_found)
    |> IO.inspect()
    |> json(%{ok: "Welcome naked!"})
  end
end

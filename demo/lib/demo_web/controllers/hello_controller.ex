defmodule DemoWeb.HelloController do
  use DemoWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def show(conn, %{"messenger" => messenger}) do
    conn
    # |> assign(:messenger, messenger)
    # |> assign(:receiver, "Daciuk")
    |> render("show.html", messenger: messenger, receiver: "Da2k")
  end
end

defmodule DemoWeb.HelloController do
  use DemoWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def show(conn, %{"messenger" => messenger}) do
    conn
    |> render("show.html", messenger: messenger)
  end
end

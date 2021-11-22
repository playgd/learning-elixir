defmodule DemoWeb.ApiController do
  use DemoWeb, :controller

  def index(conn, _params) do
    text(conn, "Hello API!")
  end

  def product(conn, %{"id" => id} = params) do
    IO.inspect(params)
    text(conn, "Product #{id}")
  end
end

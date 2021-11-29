defmodule DemoWeb.PageController do
  use DemoWeb, :controller

  def index(conn, _params) do
    conn
    |> put_resp_content_type("application/json")
    |> send_resp(201, "")
    # conn
    # |> put_root_layout("admin.html")
    # |> render(:index)
  end
end

defmodule DemoWeb.PageController do
  use DemoWeb, :controller

  def index(conn, _params) do
    ## Renderização de xml
    # conn
    # |> put_resp_content_type("text/xml")
    # |> render("index.xml", content: "<xml></xml>")

    # # Renderização alterando a resposta (content type, status code e body)
    # conn
    # |> put_resp_content_type("application/json")
    # |> send_resp(201, "")

    # # Renderização padrão
    # conn
    # |> put_root_layout("admin.html")
    # |> put_status(:ok)
    # |> render(:index)

    # # Redirecionar para url interna
    # redirect(conn, to: Routes.page_path(conn, :redirect_test))

    # # Redirecionar para url externa
    # redirect(conn, external: "https://daciuk.dev")
    
    # # Flash messages
    # conn
    # |> put_flash(:info, "Welcome to Phoenix, from flash info!")
    # |> put_flash(:error, "Let's pretend we have an error")
    # |> render("index.html")
    
    # # Flash messages com redirecionamento
    conn
    |> put_flash(:info, "Welcome to Phoenix, from flash info!")
    |> put_flash(:error, "Let's pretend we have an error")
    |> redirect(to: Routes.page_path(conn, :redirect_test))
  end

  def redirect_test(conn, _params) do
    render(conn, "index.html")
  end
end

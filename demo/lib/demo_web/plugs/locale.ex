defmodule DemoWeb.Plugs.Locale do
  import Plug.Conn, only: [assign: 3]

  @locales ["en", "fr", "de", "br"]

  def init(default), do: default

  def call(%Plug.Conn{params: %{"locale" => loc}} = conn, _default) when loc in @locales do
    assign(conn, :locale, loc)
  end

  def call(conn, default) do
    assign(conn, :locale, default)
  end
end

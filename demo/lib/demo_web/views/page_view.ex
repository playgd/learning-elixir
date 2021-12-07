defmodule DemoWeb.PageView do
  use DemoWeb, :view

  def render("index.json", %{pages: pages}) do
    %{data: render_many(pages, DemoWeb.PageView, "page.json", as: :writer)}
    # %{data: Enum.map(pages, fn page -> %{title: page.title} end)}
  end

  def render("show.json", %{page: page}) do
    %{data: render_one(page, DemoWeb.PageView, "page.json")}
    # %{data: %{title: page.title}}
  end

  def render("page.json", %{page: page}) do
    %{title: page.title}
  end

  def render("page.json", %{writer: page}) do
    %{writer: page.title}
  end
end

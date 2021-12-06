defmodule DemoWeb.Weather do
  use Phoenix.Component

  def city(assigns) do
    ~H"""
    <p>The chosen city is: <%= @name %></p>
    """
  end

  def country(assigns) do
    ~H"""
    <p>The chosen country is: <%= @name %></p>
    """
  end
end

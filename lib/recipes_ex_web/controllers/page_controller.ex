defmodule RecipesExWeb.PageController do
  use RecipesExWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end

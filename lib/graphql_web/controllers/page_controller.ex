defmodule GraphqlWeb.PageController do
  use GraphqlWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end

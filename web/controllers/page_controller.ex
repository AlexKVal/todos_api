defmodule TodosApi.PageController do
  use TodosApi.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end

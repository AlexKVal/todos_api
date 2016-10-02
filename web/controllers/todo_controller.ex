defmodule TodosApi.TodoController do
  use TodosApi.Web, :controller

  alias TodosApi.Todo

  def index(conn, _params) do
    todos = Repo.all(Todo)
    render conn, "index.json", todos: todos
  end
end

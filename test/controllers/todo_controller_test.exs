defmodule TodosApi.TodoControllerTest do
  use TodosApi.ConnCase

  test "#index renders a list of todos", %{conn: conn} do
    todo = insert(:todo)

    conn = get conn, todo_path(conn, :index)

    assert json_response(conn, 200) == %{
      "todos" => [%{
        "title" => todo.title,
        "description" => todo.description,
        "inserted_at" => Ecto.DateTime.to_iso8601(todo.inserted_at),
        "updated_at" => Ecto.DateTime.to_iso8601(todo.updated_at)
      }]
    }
  end
end

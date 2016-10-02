defmodule TodosApi.TodoViewTest do
  use TodosApi.ConnCase, async: true

  alias TodosApi.TodoView

  test "todo_json" do
    todo = insert(:todo)

    rendered_todo = TodoView.todo_json(todo)

    assert rendered_todo == %{
      title: todo.title,
      description: todo.description,
      inserted_at: todo.inserted_at,
      updated_at: todo.updated_at
    }
  end
end

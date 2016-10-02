defmodule TodosApi.Factory do
  use ExMachina.Ecto, repo: TodosApi.Repo

  alias TodosApi.Todo

  def todo_factory do
    %Todo{
      title: "Something I need to do",
      description: "List of steps I need to complete"
    }
  end
end

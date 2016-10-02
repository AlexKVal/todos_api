defmodule TodosApi.Todo do
  use TodosApi.Web, :model

  schema "todos" do
    field :title
    field :description

    timestamps
  end
end

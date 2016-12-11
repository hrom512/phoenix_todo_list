defmodule TodoList.Task do
  use TodoList.Web, :model

  schema "tasks" do
    field :title, :string
    field :completed, :boolean, default: false

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :completed])
    |> validate_required([:title, :completed])
  end
end

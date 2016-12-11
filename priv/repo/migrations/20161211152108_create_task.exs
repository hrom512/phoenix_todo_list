defmodule TodoList.Repo.Migrations.CreateTask do
  use Ecto.Migration

  def change do
    create table(:tasks) do
      add :title, :string, null: false
      add :completed, :boolean, default: false, null: false

      timestamps()
    end

  end
end

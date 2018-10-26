defmodule Tt2.Repo.Migrations.CreateManagers do
  use Ecto.Migration

  def change do
    create table(:managers) do
      add :user_id, references(:users, on_delete: :nothing), null: false
      add :manage_id, references(:users, on_delete: :nothing), null: false

      timestamps()
    end

    create index(:managers, [:user_id])
    create index(:managers, [:manage_id])

  end
end

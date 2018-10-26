defmodule Tt2.Tasks.Task do
  use Ecto.Schema
  import Ecto.Changeset


  schema "tasks" do
    field :complete, :boolean, default: false
    field :desc, :string
    field :title, :string

    belongs_to :user, Tt2.Users.User, foreign_key: :assigned_to

    timestamps()
  end

  @doc false
  def changeset(task, attrs) do
    task
    |> cast(attrs, [:title, :desc, :complete, :assigned_to])
    |> validate_required([:title, :desc, :complete])
  end
end

defmodule Tt2.Managers.Manager do
  use Ecto.Schema
  import Ecto.Changeset


  schema "managers" do
    belongs_to :manager, Tt2.Users.User, foreign_key: :user_id
    belongs_to :underling, Tt2.Users.User, foreign_key: :manage_id

    timestamps()
  end

  @doc false
  def changeset(manager, attrs) do
    manager
    |> cast(attrs, [:user_id, :manage_id])
    |> validate_required([:user_id, :manage_id])
  end
end

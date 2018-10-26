defmodule Tt2.Users.User do
  use Ecto.Schema
  import Ecto.Changeset


  schema "users" do
    field :email, :string
    field :name, :string

    has_many :tasks, Tt2.Tasks.Task, foreign_key: :assigned_to
    many_to_many :managers, __MODULE__, join_through: "managers", join_keys: [manage_id: :id, user_id: :id]
    many_to_many :underlings, __MODULE__, join_through: "managers", join_keys: [user_id: :id, manage_id: :id]


    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :email])
    |> validate_required([:name, :email])
    |> unique_constraint(:email)
  end
end

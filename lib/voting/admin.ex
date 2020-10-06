defmodule Voting.Admin do
  use Ecto.Schema
  import Ecto.Changeset

  schema "administrator" do
    field :email, :string
    field :nome, :string
    field :password_hash, :string

    timestamps()
  end

  @doc false
  def changeset(admin, attrs) do
    admin
    |> cast(attrs, [:nome, :email, :password_hash])
    |> validate_required([:nome, :email, :password_hash])
  end
end

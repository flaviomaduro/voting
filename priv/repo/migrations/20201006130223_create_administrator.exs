defmodule Voting.Repo.Migrations.CreateAdministrator do
  use Ecto.Migration

  def change do
    create table(:administrator) do
      add :nome, :string, null: false
      add :email, :string, null: false
      add :password_hash, :string, null: false

      timestamps()
    end

  end
end

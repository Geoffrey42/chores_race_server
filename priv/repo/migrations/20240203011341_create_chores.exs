defmodule ChoresRaceServer.Repo.Migrations.CreateChores do
  use Ecto.Migration

  def change do
    create table(:chores, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :user_id, :binary_id, [references(:users, name: "users_id_fkey", type: :binary_id)]
      add :label, :string
      add :points, :integer
    end
  end
end

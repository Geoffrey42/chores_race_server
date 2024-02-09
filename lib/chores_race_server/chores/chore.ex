defmodule ChoresRaceServer.Chores.Chore do
  use Ecto.Schema

  @primary_key {:id, :binary_id, autogenerate: true}

  schema "chores" do
    field :user_id, :binary_id
    field :label, :string
    field :points, :integer
  end

  def changeset(chore, params \\ %{}) do
    chore
    |> Ecto.Changeset.cast(params, [:user_id, :label, :points])
    |> Ecto.Changeset.validate_required([:user_id, :label, :points])
  end
end

defmodule ChoresRaceServer.ChoresFixtures do
  def chore_fixture(params) do
    chore = %ChoresRaceServer.Chores.Chore{}

    changeset = ChoresRaceServer.Chores.Chore.changeset(chore, params)
    {:ok, inserted_chore} = ChoresRaceServer.Repo.insert(changeset)

    inserted_chore
  end
end

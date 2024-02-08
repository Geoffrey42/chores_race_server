defmodule ChoresRaceServer.Chores do
  
  require Ecto.Query

  def get_by_user_id(user_id) do
    ChoresRaceServer.Chores.Chore
      |> Ecto.Query.where(user_id: ^user_id)
      |> ChoresRaceServer.Repo.all()
  end
end

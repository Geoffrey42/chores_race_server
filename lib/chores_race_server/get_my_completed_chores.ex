defmodule ChoresRaceServer.GetMyCompletedChores do
  @moduledoc """
  GetMyCompletedChores manages how a given user can get their completed chores and their associated points.
  """

  @doc """
  get retrieves completed chores for a given user_id.
  """

  require Ecto.Query

  def get(user_id) do
    user_chores =
      user_id
      |> ChoresRaceServer.Chores.get_by_user_id()
      |> Enum.map(fn chore ->
        %ChoresRaceServer.Entities.Chores{
          id: chore.id,
          label: chore.label,
          points: chore.points
        }
      end)

    {:ok, user_chores}
  end
end

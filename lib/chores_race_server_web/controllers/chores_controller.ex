defmodule ChoresRaceServerWeb.ChoreController do
  use ChoresRaceServerWeb, :controller

  def show(conn, %{"id" => user_id}) do
    {:ok, completed_chores} = ChoresRaceServer.GetMyCompletedChores.get(user_id)

    render(conn, :show, chores: completed_chores)
  end
end

defmodule ChoresRaceServer.GetMyCompletedChoresTest do
  use ChoresRaceServer.DataCase

  test "should get a user completed chores" do
    user_id = "672653ee-ef3d-425b-a0a7-47679e145118"
    ChoresRaceServer.Repo.insert(%ChoresRaceServer.Users.User{id: user_id})

    expected_completed_chores = [
      %ChoresRaceServer.Entities.Chores{
        id: "92c48be1-f1d0-4455-a8d2-e0cdb8d68f22",
        label: "Faire la vaisselle",
        points: 13
      },
      %ChoresRaceServer.Entities.Chores{
        id: "fa61ae09-0aab-41ff-973b-95d8cd161993",
        label: "Nettoyer les toilettes",
        points: 5
      },
      %ChoresRaceServer.Entities.Chores{
        id: "1017fd28-03e1-4f07-97a3-a60aa670bf71",
        label: "Passer le balai",
        points: 5
      }
    ]

    Enum.each(expected_completed_chores, fn chore ->
      ChoresRaceServer.Repo.insert(%ChoresRaceServer.Chores.Chore{
        id: chore.id,
        user_id: user_id,
        label: chore.label,
        points: chore.points
      })
    end)

    {:ok, completed_chores} = ChoresRaceServer.GetMyCompletedChores.get(user_id)

    assert completed_chores == expected_completed_chores
  end
end

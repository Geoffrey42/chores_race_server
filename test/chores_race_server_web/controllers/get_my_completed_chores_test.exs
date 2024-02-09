defmodule ChoresRaceServerWeb.ChoresControllerTest do
  use ChoresRaceServerWeb.ConnCase

  import ChoresRaceServer.ChoresFixtures

  @user_id "672653ee-ef3d-425b-a0a7-47679e145118"

  @create_attrs %{
    user_id: @user_id,
    label: "Faire la vaisselle",
    points: 13
  }

  describe "show" do
    setup [:create_chore]

    test "get my completed chores", %{conn: conn} do
      conn = get(conn, ~p"/api/my-completed-chores/#{@user_id}")
      completed_chore =
        json_response(conn, 200)["data"]
        |> hd()
      
      assert completed_chore["label"] == @create_attrs.label
      assert completed_chore["points"] == @create_attrs.points
    end
  end

  defp create_chore(_) do
    chore = chore_fixture(@create_attrs)

    %{chore: chore}
  end
end

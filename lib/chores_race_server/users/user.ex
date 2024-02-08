defmodule ChoresRaceServer.Users.User do
  use Ecto.Schema

  @primary_key {:id, :binary_id, autogenerate: true}

  schema "users" do
  end
end

defmodule ChoresRaceServer.Repo do
  use Ecto.Repo,
    otp_app: :chores_race_server,
    adapter: Ecto.Adapters.Postgres
end

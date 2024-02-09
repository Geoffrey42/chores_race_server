defmodule ChoresRaceServerWeb.ChoreJSON do
  
  def show(%{chores: chores}) do
    %{data: chores}
  end

end

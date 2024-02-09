defmodule ChoresRaceServer.Entities.Chores do
  @derive Jason.Encoder
  @enforce_keys [:id, :label, :points]

  defstruct @enforce_keys

  @type t :: %__MODULE__{
          id: String.t(),
          label: String.t(),
          points: non_neg_integer()
        }
end

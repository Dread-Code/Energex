defmodule Energex.Items.Get do
  alias Energex.{ Item, Repo }

  def call(id) do
    case Repo.get(Item, id) do
      nil  -> {:error, "Item not found"}
      item -> {:ok, item}
    end
  end
end

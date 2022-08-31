defmodule Energex.Items.Create do
  alias Energex.{ Item, Repo }

  def call(params) do
    params
    |> Item.changeset()
    |> Repo.insert()
  end
end

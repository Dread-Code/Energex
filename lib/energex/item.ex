defmodule Energex.Item do
  use Ecto.Schema
  import Ecto.Changeset

  @fields [:description, :power_consumption, :rate]

  schema "items" do
    field :description, :string
    field :power_consumption, :float
    field :rate, :string

    timestamps()
  end

  def changeset(attrs) do
    %__MODULE__{}
    |> cast(attrs, @fields)
    |> validate_required(@fields)
  end
end

defmodule Energex.Repo.Migrations.CreateItems do
  use Ecto.Migration

  def change do
    create table(:items) do
      add :description, :string
      add :power_consumption, :float
      add :rate, :string

      timestamps()
    end
  end
end

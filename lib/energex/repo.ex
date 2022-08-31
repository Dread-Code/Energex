defmodule Energex.Repo do
  use Ecto.Repo,
    otp_app: :energex,
    adapter: Ecto.Adapters.Postgres
end

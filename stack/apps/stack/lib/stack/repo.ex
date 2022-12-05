defmodule Stack.Repo do
  use Ecto.Repo,
    otp_app: :stack,
    adapter: Ecto.Adapters.Postgres
end

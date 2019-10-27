defmodule PollsElixirApi.Repo do
  use Ecto.Repo,
    otp_app: :polls_elixir_api,
    adapter: Ecto.Adapters.Postgres
end

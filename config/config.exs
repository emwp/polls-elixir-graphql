# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :polls_elixir_api,
  ecto_repos: [PollsElixirApi.Repo]

# Configures the endpoint
config :polls_elixir_api, PollsElixirApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "4VKj/3jj+b9p2eEIt3Sdk7jHX2s+ufhEupJiYZkLxfrOPom24AZ+VqM38UwD88yV",
  render_errors: [view: PollsElixirApiWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: PollsElixirApi.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

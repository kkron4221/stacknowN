# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :stack,
  ecto_repos: [Stack.Repo]

# Configures the endpoint
config :stack, StackWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base:
    "oo6TVQ8KX27rlb3ukfS3esoogR6ME3IBs9nuerMglGCuPINW+CRWOGT5zMYdnui2",
  render_errors: [
    view: StackWeb.ErrorView,
    accepts: ~w(html json),
    layout: false
  ],
  pubsub_server: Stack.PubSub,
  live_view: [signing_salt: "le/F9nOH"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

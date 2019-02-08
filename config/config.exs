# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :recipes_ex,
  ecto_repos: [RecipesEx.Repo]

# Configures the endpoint
config :recipes_ex, RecipesExWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "3ehGtYU/b5n5Z1qFfxDB0EBr8mbaojD2vWZ5WFjF3sMnZsMR6DXmqlckAs04FCiV",
  render_errors: [view: RecipesExWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: RecipesEx.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :recipes_ex, RecipesExWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :recipes_ex, RecipesEx.Repo,
  username: "postgres",
  password: "postgres",
  database: "recipes_ex_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

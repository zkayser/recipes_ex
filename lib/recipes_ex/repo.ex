defmodule RecipesEx.Repo do
  use Ecto.Repo,
    otp_app: :recipes_ex,
    adapter: Ecto.Adapters.Postgres
end

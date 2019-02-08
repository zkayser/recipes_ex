defmodule RecipesEx.Repo.Migrations.CreateRecipes do
  use Ecto.Migration

  def change do
    create table(:recipes) do
      add :name, :string
      add :directions, :string

      timestamps()
    end

    create unique_index(:recipes, [:name])
  end
end

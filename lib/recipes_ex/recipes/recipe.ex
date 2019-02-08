defmodule RecipesEx.Recipes.Recipe do
  use Ecto.Schema
  import Ecto.Changeset


  schema "recipes" do
    field :directions, :string
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(recipe, attrs) do
    recipe
    |> cast(attrs, [:name, :directions])
    |> validate_required([:name, :directions])
    |> unique_constraint(:name)
  end
end

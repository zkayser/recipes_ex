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
    |> cast(attrs, [:directions, :name])
    |> validate_required([:directions, :name])
  end
end

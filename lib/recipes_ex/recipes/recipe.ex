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
    {:error, :not_yet_implemented}
  end
end

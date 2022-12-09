defmodule Stack.Fixture.StockItem do
  use Ecto.Schema
  import Ecto.Changeset

  schema "stock_items" do
    field :name, :string
    field :description, :string
    
    timestamps()
  end

  @doc false
  def changeset(stock_item, attrs) do
    stock_item
    |> cast(attrs, [])
    |> validate_required([])
  end
end

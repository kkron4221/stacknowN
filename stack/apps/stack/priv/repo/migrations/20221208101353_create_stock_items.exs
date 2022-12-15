defmodule Stack.Repo.Migrations.CreateStockItems do
  use Ecto.Migration

  def change do
    create table(:stock_items) do
      add :name, :string, null: false
      add :description, :text, null: false
      add :order_time, :utc_datetime, null: false

      timestamps()
    end

  end
end

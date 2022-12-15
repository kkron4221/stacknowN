defmodule Stack.Fixture do
    import Ecto.Query, warn: false
    alias Stack.Repo
    alias Stack.Fixture.StockItem

    def list_stock_items do
        StockItem
        |> Ecto.Query.order_by(asc: :order_time)
        |> Repo.all()
    end

    def get_stock_item!(id) do
        Repo.get!(StockItem, id)
    end
end
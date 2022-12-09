defmodule Stack.Fixture do
    import Ecto.Query, warn: false
    alias Stack.Repo
    alias Stack.Fixture.StockItem

    def list_stock_items do
        Repo.all(StockItem)
    end
end
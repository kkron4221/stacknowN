defmodule StackWeb.StockItemController do
  use StackWeb, :controller
  alias Stack.Fixture

  def index(conn, _params) do
    stock_items = Fixture.list_stock_items()
    render(conn, "index.html", stock_items: stock_items)
  end
end

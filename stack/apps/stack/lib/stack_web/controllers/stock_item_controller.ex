defmodule StackWeb.StockItemController do
  use StackWeb, :controller
  alias Stack.Fixture

  def index(conn, _params) do
    stock_items = Fixture.list_stock_items()
    render(conn, "index.html", stock_items: stock_items)
  end

  def show(conn, %{"id" => id}) do
    stock_item = Fixture.get_stock_item!(id)
    render(conn, "show.html", stock_item: stock_item)
  end
end

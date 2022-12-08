defmodule StackWeb.StockItemController do
  use StackWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end

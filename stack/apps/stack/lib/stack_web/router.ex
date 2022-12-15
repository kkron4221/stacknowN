defmodule StackWeb.Router do
  use StackWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  scope "/", StackWeb do
    pipe_through :browser

    get "/", TopController, :index
    get "/stock_items", StockItemController, :index
    get "/stock_items/:id", StockItemController, :show
  end
end

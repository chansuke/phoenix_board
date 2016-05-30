defmodule PhoenixBoard.Router do
  use PhoenixBoard.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  scope "/", PhoenixBoard do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end
end

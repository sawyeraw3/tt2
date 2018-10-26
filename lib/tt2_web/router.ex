defmodule Tt2Web.Router do
  use Tt2Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
    plug Tt2Web.Plugs.FetchSession
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Tt2Web do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index

    get "/underlings", TaskController, :underlings_tasks
    get "/managers", ManagerController, :index
    get "/user-tasks", TaskController, :tasks
    get "/user-underlings-tasks", TaskController, :underlings_tasks
    
    resources "/tasks", TaskController
    resources "/manage", ManagerController

    resources "/users", UserController
    resources "/sessions", SessionController, only: [:create, :delete], singleton: true
  end

  # Other scopes may use custom stacks.
  # scope "/api", Tt2Web do
  #   pipe_through :api
  # end
end

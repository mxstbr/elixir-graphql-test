defmodule GraphqlWeb.Router do
  use GraphqlWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api" do
    pipe_through :api

    forward "/graphiql", Absinthe.Plug.GraphiQL,
      schema: GraphqlWeb.Schema

    forward "/", Absinthe.Plug,
      schema: GraphqlWeb.Schema
  end

  # Other scopes may use custom stacks.
  # scope "/api", GraphqlWeb do
  #   pipe_through :api
  # end
end

defmodule PollsElixirApiWeb.Router do
  use PollsElixirApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api" do
    pipe_through :api

    forward("/graphql", Absinthe.Plug, schema: PollsElixirApiWeb.Schema)

    if Mix.env() == :dev do
      forward("/graphiql", Absinthe.Plug.GraphiQL, schema: PollsElixirApiWeb.Schema)
    end
  end
end

defmodule PollsElixirApiWeb.Router do
  use PollsElixirApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", PollsElixirApiWeb do
    pipe_through :api
  end
end

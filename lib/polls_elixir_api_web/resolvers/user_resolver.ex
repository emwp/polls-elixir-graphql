defmodule PollsElixirApiWeb.Resolvers.UserResolver do
  alias PollsElixirApi.Accounts

  def users(_, _, _) do
    {:ok, Accounts.list_users()}
  end
end

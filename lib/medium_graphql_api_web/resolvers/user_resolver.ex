defmodule MediumGraphqlApiWeb.Resolvers.UserResolver do
  alias MediumGraphqlApi.Accounts

  def users(_, _, %{context: context}) do
    IO.inspect(context)
    {:ok, Accounts.list_users()}
  end
end
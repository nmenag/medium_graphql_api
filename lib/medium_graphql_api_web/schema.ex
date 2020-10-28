defmodule MediumGraphqlApiWeb.Schema do
  use Absinthe.Schema

  alias  MediumGraphqlApiWeb.Resolvers

  import_types(MediumGraphqlApiWeb.Schema.Types)

  query do

    @desc "Get a list of all users"

    @desc "Get a list of all users"
    field :users, list_of(:user_type) do
      resolve(&Resolvers.UserResolver.users/3)
    end
  end

  # mutation do
  # end

  # subscription do
  # end
end
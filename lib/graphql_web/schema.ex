defmodule GraphqlWeb.Schema do
  use Absinthe.Schema
  import_types GraphqlWeb.Schema.ContentTypes

  alias GraphqlWeb.Resolvers

  query do

    @desc "Get all threads"
    field :threads, list_of(:thread) do
      resolve &Resolvers.Thread.list_threads/3
    end
  end
end

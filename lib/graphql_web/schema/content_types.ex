defmodule GraphqlWeb.Schema.ContentTypes do
  use Absinthe.Schema.Notation

  object :thread do
    field :id, :id
    field :title, :string
  end
end

defmodule GraphqlWeb.Resolvers.Thread do
  import RethinkDB.Query
  alias GraphqlWeb.Content.Views.ThreadView

  def list_threads(_parent, _args, _resolution) do
    {:ok, Graphql.Content.Threads.get_first() |> ThreadView.render}
  end
end

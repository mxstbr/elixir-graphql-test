defmodule Graphql.Content.Threads do
  import RethinkDB.Query

  def get_first(num \\ 10) do
    "threads"
    |> table
    |> limit(num)
    |> Graphql.Database.run
    |> fn res -> res.data end.()
  end
end

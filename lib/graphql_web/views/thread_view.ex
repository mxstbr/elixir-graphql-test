defmodule GraphqlWeb.Content.Views.ThreadView do
  def render(threads) do
    Enum.map(threads, &render_one(&1))
  end 

  def render_one(thread) do
    %{
      :id => Map.get(thread, "id"),
      :title => Map.get(Map.get(thread, "content"), "title")
    }
  end
end

defmodule Constable.Queries.Subscription do
  alias Constable.Subscription
  import Ecto.Query

  def for_announcement(announcement_id) do
    from s in Subscription,
      where: s.announcement_id == ^announcement_id,
      preload: [:user]
  end
end

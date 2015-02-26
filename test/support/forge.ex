defmodule Forge do
  use Blacksmith
  alias Constable.Announcement
  alias Constable.Comment
  alias Constable.Subscription
  alias Constable.User
  alias Constable.AnnouncementInterest
  alias Constable. Interest

  @save_one_function &Blacksmith.Config.save/2
  @save_all_function &Blacksmith.Config.save_all/2

  register :announcement,
    __struct__: Announcement,
    title: "Post Title",
    body: "Post Body",
    inserted_at: Ecto.DateTime.utc,
    updated_at: Ecto.DateTime.utc

  register :announcement_interest,
    __struct__: AnnouncementInterest

  register :interest,
    __struct__: Interest,
    name: "general"

  register :comment,
    __struct__: Comment,
    body: "Post Body",
    inserted_at: Ecto.DateTime.utc

  register :user,
    __struct__: User,
    name: "Gumbo",
    email: Sequence.next(:email, &"test#{&1}@thoughtbot.com")

  register :subscription,
    __struct__: Subscription
end

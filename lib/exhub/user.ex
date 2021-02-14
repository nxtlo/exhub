defmodule Exhub.User do
  
  import Poison

  defstruct [
    :id,
    :nickname,
    :username,
    :avatar_url,
    :url,
    :followers_count,
    :following_count,
    :type,
    :location,
    :company,
    :bio,
    :twitter_name,
    :public_repos,
    :public_gists,
    :created_at,
    :updated_at
  ]

  def fmt(body) do
    body
    |> decode!
    |> Enum.map(fn({x, y}) -> {String.to_atom(x), y} end)
  end
end

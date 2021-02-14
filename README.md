# exhub is at the very first stages github api wrapper written in elixir.

## Simple usage

```
iex(1)> user = Exhub.get_user("nxtlo")
iex(2)> repo = Exhub.get_repo("exhub")
```

This will return the every possible data from github api.

## Background

This will be a simple get and post api using httpoison for Github

## Installation

__TODO__

```elixir
def deps do
  [
    {:exhub, git: "https://github.com/nxtlo/exhub.git"},
    {:httpoison, "~> 1.8"},
  ]
end
```

## TODO

- [ ] Get user-specific data
  -  [ ] created_at
  -  [ ] avatar_url
  -  [ ] username
  -  [ ] type
  -  [ ] url
  -  [ ] bio
  -  [ ] followers
  -  [ ] following
  -  [ ] repo_count
  -  [ ] email
  -  [ ] location
  -  [ ] twitter_user
  -  [ ] user_id

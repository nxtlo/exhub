defmodule ApiTest do
  use ExUnit.Case
  doctest Api

  def user_test() do
    user = Api.get_user("nxtlo")
    assert user
  end

  def repo_test() do
    repo = Api.get_repo("discord.py")
    assert repo
  end
end

defmodule Exhub do

  import HTTPoison

  def api_method(method \\ nil) do
    "https://api.github.com/#{method}"
  end

  def get_user(name) do
    get_user = Exhub.api_method("users/#{name}")
    cond do
      true -> 
        get!(get_user)
      false ->
        nil
    end
  end

  def get_repo(name) do
    get_repo = Exhub.api_method("repos/#{name}")
    cond do
      true ->
        get!(get_repo, [], hackney: [pool: :default])
      false ->
        nil
    end
  end
end

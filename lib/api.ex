defmodule Api do
  import HTTPoison


  def api_method(method \\ nil) do
    "https://api.github.com/#{method}"
  end

  def get_user(name) do
    get_user = Api.api_method("users/#{name}")
    cond do
      true -> 
        get!(get_user, [], hackney: [pool: :default])
      false ->
        nil
    end
  end

  def get_repo(name) do
    name
  end
  
  def post(url) do
    try do
      post!(
        url, {
          :mulitpart, [{
                 :file, "test.rs", {"from-data"}, [{"name", "postest"}, {"filename", "test.rs"}], []}]})
    after
      IO.puts("Error occurred.")
    end
  end
end

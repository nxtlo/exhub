defmodule Api.MixProject do
  use Mix.Project

  def project do
    [
      app: :exhub,
      version: "0.1.0",
      name: "exhub",
      elixir: "~> 1.9",
      description: "An api wrapper for github written in elixir",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      application: [:httpoison]
    ]
  end

  defp deps do
    [
      {:httpoison, "~> 1.8"},
      {:poison, "~> 3.1"}
    ]
  end
end

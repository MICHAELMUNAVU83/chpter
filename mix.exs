defmodule Chpter.MixProject do
  use Mix.Project

  def project do
    [
      app: :chpter,
      version: "0.1.1",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      description:
        "This is wrapper for Chpter API that you can use to integrate Mpesa payments in your Elixir application.",
      deps: deps(),
      package: package(),
      name: "Chpter"
    ]
  end

  defp package do
    [
      maintainers: ["Michael Munavu"],
      licenses: ["MIT"],
      links: %{
        "Online Documentation" => "https://hexdocs.pm/chpter/0.1.1/Chpter.html",
        "GitHub" => "https://github.com/MICHAELMUNAVU83/chpter",
        "Owner Portfolio" => "https://michaelmunavu.com"
      }
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:poison, "~> 5.0"},
      {:timex, "~> 3.0"},
      {:httpoison, "~> 2.1"},
      {:ex_doc, "~> 0.27", only: :dev, runtime: false}
    ]
  end
end

defmodule Chpter.MixProject do
  use Mix.Project

  def project do
    [
      app: :chpter,
      version: "0.1.2",
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
        "GitHub" => "https://github.com/MICHAELMUNAVU83/chpter",
        "Medium Article on Implimentation" =>
          "https://medium.com/@michaelmunavu83/using-chpter-api-for-mpesa-payments-in-elixir-and-phoenix-live-view-9406ac4d1039",
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

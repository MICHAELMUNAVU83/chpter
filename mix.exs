defmodule Chpter.MixProject do
  use Mix.Project

  def project do
    [
      app: :chpter,
      version: "0.1.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      description:
        "This is wrapper for Chpter API that you can use to integrate Mpesa payments in your Elixir application.",
      deps: deps(),
      package: package(),
      name: "Chpter",
      source_url: "https://github.com/manuelgeek/mpesa_elixir.git",
      homepage_url: "https://hexdocs.pm/mpesa/Mpesa.html",
      docs: [
        # The main page in the docs
        main: "Mpesa",
        # logo:
        #   "https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/M-PESA_LOGO-01.svg/1200px-M-PESA_LOGO-01.svg.png",
        extras: ["README.md"]
      ]
    ]
  end

  defp package do
    [
      maintainers: ["Michael Munavu"],
      licenses: ["MIT"],
      links: %{
        "GitHub" => "https://github.com/MICHAELMUNAVU83/chpter"
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
      {:httpoison, "~> 2.1"}
    ]
  end
end

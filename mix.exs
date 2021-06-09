defmodule UniqCompat.MixProject do
  use Mix.Project

  def project do
    [
      app: :elixir_uuid,
      description: "An :elixir_uuid compatibility layer for :uniq",
      package: package(),
      version: "0.1.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      source_url: "https://github.com/bitwalker/uniq_compat",
      homepage_url: "https://github.com/bitwalker/uniq",
      preferred_cli_env: [
        docs: :docs,
        "hex.publish": :docs
      ]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: []
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:uniq, "~> 0.3"},
      {:ex_doc, "> 0.0.0", only: [:docs], runtime: false}
    ]
  end

  defp package do
    [
      name: :uniq_compat,
      files: ["lib", "mix.exs", "README.md", "LICENSE.md"],
      maintainers: ["Paul Schoenfelder"],
      licenses: ["Apache 2.0"],
      links: %{
        GitHub: "https://github.com/bitwalker/uniq_compat"
      }
    ]
  end
end

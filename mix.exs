defmodule MixOverrideDependencyOrder.MixProject do
  use Mix.Project

  def project do
    [
      app: :mix_override_dependency_order,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps()
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
      {:tesla, "~> 1.6.0"},
      {:grpc, "~> 0.5.0"}
    ]
  end
end

defmodule Diskv.MixProject do
  use Mix.Project

  def project do
    [
      app: :diskv,
      version: "0.1.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :graft]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:graft, "~> 0.2.0"}
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end
end

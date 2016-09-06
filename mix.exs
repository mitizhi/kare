defmodule Kare.Mixfile do
  use Mix.Project

  def project do
    [app: :kare,
     version: "1.0.0",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description,
     package: package,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    []
  end

  defp description do
      """
        Function currying in Elixir.
      """
  end

  defp package do
      [
          files: ["lib", "mix.exs", "README.md"],
          maintainers: ["Yos Riady"],
          licenses: ["MIT"],
          links: %{"GitHub" => "https://github.com/yosriady/kare"}
      ]
  end
end

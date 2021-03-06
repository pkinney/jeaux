defmodule Jeaux.Mixfile do
  use Mix.Project

  def project do
    [app: :jeaux,
     version: "0.2.1",
     elixir: "~> 1.3",
     description: description,
     package: package,
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  def application, do: [applications: applications]

  defp applications, do: []

  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end

  defp description do
    """
    A library for validating http params and queries
    """
  end

  defp package do
    [
      maintainers: ["Zac Barnes <zac.barnes89@gmail.com>"],
      files: ["lib", "mix.exs", "README.md", "LICENSE",],
      licenses: ["MIT"],
      links: %{
        "GitHub" => "http://github.com/zbarnes757/jeaux"
      }
    ]
  end
end

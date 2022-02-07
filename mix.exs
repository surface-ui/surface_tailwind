defmodule SurfaceTailwind.MixProject do
  use Mix.Project

  @source_url "https://github.com/surface-ui/surface_tailwind"
  @version "0.0.1"

  def project do
    [
      app: :surface_tailwind,
      version: @version,
      elixir: "~> 1.11",
      elixirc_paths: elixirc_paths(Mix.env()),
      start_permanent: Mix.env() == :prod,
      compilers: [:phoenix] ++ Mix.compilers(),
      description: description(),
      package: package(),
      aliases: aliases(),
      deps: deps(),
      docs: docs()
    ]
  end

  defp description do
    """
    Surface Tailwind use daisyUI Tailwind and Surface-UI components that makes it easy for Phoenix developers to start building beautiful web apps.
    """
  end

  def catalogues do
    [
      "priv/catalogue",
      "deps/surface/priv/catalogue"
    ]
  end

  defp elixirc_paths(:dev), do: ["lib"] ++ catalogues()
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:phoenix_html, "~> 3.2"},
      {:ex_doc, "~> 0.28", only: :dev, runtime: false},
      {:floki, ">= 0.32.0", only: :test},
      {:phoenix_live_view, "~> 0.17", optional: true},
      {:phoenix_ecto, "~> 4.4", only: [:test, :dev]},
      {:ecto, "~> 3.7.1", only: [:test, :dev]},
      {:jason, "~> 1.3"},
      {:credo, "~> 1.6.2", only: :dev},
      {:surface, "~> 0.7"},
      {:ex_heroicons, "~> 0.6.0"},
      {:surface_catalogue, "~> 0.3.0", only: :dev},
      {:surface_formatter, "~> 0.7.4", only: :dev},
      {:earmark, "1.4.19"},
      {:earmark_parser, "1.4.17", override: true}
    ]
  end

  defp aliases do
    [
      dev: "run --no-halt dev.exs"
    ]
  end

  defp docs do
    [
      main: "readme",
      logo: "logo.png",
      name: "SurfaceUI with daisyUI Components",
      source_ref: "v#{@version}",
      canonical: "http://hexdocs.pm/surface_tailwind",
      source_url: @source_url,
      extras: ["README.md"]
    ]
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README*", "priv"],
      licenses: ["MIT"],
      links: %{"GitHub" => @source_url}
    ]
  end
end

# iex -S mix dev

Logger.configure(level: :debug)

defmodule Surface.Catalogue.ErrorView do
  use Phoenix.View,
    root: "lib/surface/catalogue/templates",
    namespace: Surface.Catalogue
end

# Start the catalogue server
Surface.Catalogue.Server.start(
  reloadable_compilers: [:phoenix, :elixir, :surface],
  http: [port: 4001],
  live_reload: [
    patterns: [
      ~r"lib/surface_tailwind/.*(ex|js)$",
      ~r"priv/catalogue/.*ex$"
    ]
  ]
)

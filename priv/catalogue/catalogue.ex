defmodule SurfaceTailwind.Catalogue do
  @moduledoc """
  Catalogue implementation for SurfaceTailwind.
  Allows calalogue tools to properly run examples and playgrounds provided
  by this lib.
  """

  use Surface.Catalogue

  # load_asset("assets/js/app.js", as: :app_js)
  # load_asset("assets/css/app.css", as: :app_css)
  #
  # head_css: """
  # <style>#{@app_css}</style>
  # """,
  # head_js: """
  # <script> #{@app_js}</script>
  # """,

  @impl true
  def config do
    [
      head_css: """
      <link href="https://cdn.jsdelivr.net/npm/daisyui@1.25.4/dist/full.css" rel="stylesheet" type="text/css" />
      <link href="https://cdn.jsdelivr.net/npm/tailwindcss@3.0.18/dist/tailwind.min.css" rel="stylesheet" type="text/css" />
      """,
      playground: [
        body: [
          style: "padding: 1.5rem; height: 100%;",
          class: "has-background-light"
        ]
      ]
    ]
  end
end

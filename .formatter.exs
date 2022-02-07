# Used by "mix format"
[
  import_deps: [:phoenix, :surface, :ecto],
  inputs: [
    "*.{ex,exs}",
    "{config,lib,test,priv}/**/*.{ex,exs}"
  ],
  surface_inputs: [
    "{lib,test}/**/*.{ex,exs,sface}",
    "priv/catalogue/**/*.{ex,exs,sface}"
  ]
]

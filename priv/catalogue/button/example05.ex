defmodule SurfaceTailwind.Catalogue.Button.Example05 do
  @moduledoc """
  """
  use Surface.Catalogue.Example,
    subject: SurfaceTailwind.Button,
    catalogue: SurfaceTailwind.Catalogue,
    title: "button with state colors",
    direction: "vertical"

  def render(assigns) do
    ~F"""
    <Button color="info">info</Button>
    <Button color="success">success</Button>
    <Button color="warning">warning</Button>
    <Button color="error">error</Button>
    """
  end
end

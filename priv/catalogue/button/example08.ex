defmodule SurfaceTailwind.Catalogue.Button.Example08 do
  @moduledoc """
  """
  use Surface.Catalogue.Example,
    subject: SurfaceTailwind.Button,
    catalogue: SurfaceTailwind.Catalogue,
    title: "button size",
    direction: "vertical"

  def render(assigns) do
    ~F"""
    <Button size="lg">Large</Button>
    <Button label="Normal"/>
    <Button size="sm">Small</Button>
    <Button size="xs">Tiny</Button>
    """
  end
end

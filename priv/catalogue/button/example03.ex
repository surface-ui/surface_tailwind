defmodule SurfaceTailwind.Catalogue.Button.Example03 do
  @moduledoc """
  """
  use Surface.Catalogue.Example,
    subject: SurfaceTailwind.Button,
    catalogue: SurfaceTailwind.Catalogue,
    title: "outline button",
    direction: "vertical"

  def render(assigns) do
    ~F"""
    <Button outline>neutral</Button>
    <Button outline color="primary">primary</Button>
    <Button outline color="secondary">secondary</Button>
    <Button outline color="accent">accent</Button>
    """
  end
end

defmodule SurfaceTailwind.Catalogue.Button.Example01 do
  @moduledoc """
  """
  use Surface.Catalogue.Example,
    subject: SurfaceTailwind.Button,
    catalogue: SurfaceTailwind.Catalogue,
    title: "button with brand colors",
    direction: "vertical"

  def render(assigns) do
    ~F"""
    <Button label="neutral"/>
    <Button color="primary">primary</Button>
    <Button color="secondary">secondary</Button>
    <Button color="accent">accent</Button>
    <Button style="ghost">ghost</Button>
    <Button style="link">link</Button>
    """
  end
end

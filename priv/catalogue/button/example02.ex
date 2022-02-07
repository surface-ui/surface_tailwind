defmodule SurfaceTailwind.Catalogue.Button.Example02 do
  @moduledoc """
  """
  use Surface.Catalogue.Example,
    subject: SurfaceTailwind.Button,
    catalogue: SurfaceTailwind.Catalogue,
    title: "active state button",
    direction: "vertical"

  def render(assigns) do
    ~F"""
    <Button role="button" opts={aria_pressed: "true"} active>neutral</Button>
    <Button role="button" color="primary" opts={aria_pressed: "true"} active>primary</Button>
    <Button role="button" color="secondary" opts={aria_pressed: "true"} active>secondary</Button>
    <Button role="button" color="accent" opts={aria_pressed: "true"} active>accent</Button>
    <Button role="button" style="link" opts={aria_pressed: "true"} active>link</Button>
    """
  end
end

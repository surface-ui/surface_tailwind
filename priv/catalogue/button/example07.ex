defmodule SurfaceTailwind.Catalogue.Button.Example07 do
  @moduledoc """
  """
  use Surface.Catalogue.Example,
    subject: SurfaceTailwind.Button,
    catalogue: SurfaceTailwind.Catalogue,
    title: "button with different HTML tags",
    direction: "vertical"

  # XXX: change after implemented the link and input component
  def render(assigns) do
    ~F"""
    <Button type="submit">Button</Button>
    """
  end
end

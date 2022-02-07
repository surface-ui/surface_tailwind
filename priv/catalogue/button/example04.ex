defmodule SurfaceTailwind.Catalogue.Button.Example04 do
  @moduledoc """
  """
  use Surface.Catalogue.Example,
    subject: SurfaceTailwind.Button,
    catalogue: SurfaceTailwind.Catalogue,
    title: "disabled button",
    direction: "vertical"

  def render(assigns) do
    ~F"""
    <Button disabled>neutral</Button>
    <Button disabled color="primary">primary</Button>
    <Button disabled style="ghost">ghost</Button>
    <Button disabled style="link">link</Button>
    <Button opts={tabindex: "-1", aria_disabled: "true"} role="button" class="btn-disabled">visually disabled</Button>
    """
  end
end

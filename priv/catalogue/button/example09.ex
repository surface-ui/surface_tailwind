defmodule SurfaceTailwind.Catalogue.Button.Example09 do
  @moduledoc """
  """
  use Surface.Catalogue.Example,
    subject: SurfaceTailwind.Button,
    catalogue: SurfaceTailwind.Catalogue,
    title: "button wide",
    height: "280px"

  def render(assigns) do
    ~F"""
      <div style="margin-bottom: 10px">
        <Button shape="wide" size="lg">large</Button>
      </div>
      <div style="margin-bottom: 10px">
        <Button shape="wide">normal</Button>
      </div>
      <div style="margin-bottom: 10px">
        <Button shape="wide" size="sm">small</Button>
      </div>
      <Button shape="wide" size="xs">tiny</Button>
    """
  end
end

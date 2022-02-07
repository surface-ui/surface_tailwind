defmodule SurfaceTailwind.Catalogue.Button.Example06 do
  @moduledoc """
  """
  use Surface.Catalogue.Example,
    subject: SurfaceTailwind.Button,
    catalogue: SurfaceTailwind.Catalogue,
    title: "responsive buttons",
    direction: "vertical"

  def render(assigns) do
    ~F"""
    <Button size="xs" class="md:btn-sm lg:btn-md xl:btn-lg">resize your browser</Button>
    <Button shape="square" size="xs" class="md:btn-sm lg:btn-md xl:btn-lg">
      <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" class="inline-block w-4 h-4 stroke-current md:w-6 md:h-6">
        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"></path>
      </svg>
    </Button>
    <Button shape="circle" size="xs" class="md:btn-sm lg:btn-md xl:btn-lg">
      <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" class="inline-block w-4 h-4 stroke-current md:w-6 md:h-6">
        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"></path>
      </svg>
    </Button>
    """
  end
end

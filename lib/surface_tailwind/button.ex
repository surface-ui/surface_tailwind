defmodule SurfaceTailwind.Button do
  @moduledoc """
  The classic **button**, in different colors, sizes, and states
  """

  use Surface.Component

  @colors ~w(primary secondary accent info success warning error)
  @styles ~w(ghost link)
  @sizes ~w(lg md sm xs)
  @shapes ~w(wide block circle square)

  @doc """
  The button type, defaults to "button", mainly used for instances like modal X to close style buttons
  where you don't want to set a type at all. Setting to nil makes button have no type.
  """
  prop type, :string, default: "button"

  @doc "The role for the button"
  prop role, :string

  @doc "The label of the button, when no content (default slot) is provided"
  prop label, :string

  @doc "The color of the button"
  prop color, :string, values!: @colors

  @doc "The style of the button"
  prop style, :string, values!: @styles

  @doc "The value for the button"
  prop value, :string

  @doc "Force button to show active state"
  prop active, :boolean, default: false

  @doc "Transparent Button with colored border"
  prop outline, :boolean, default: false

  @doc "Force button to show disabled state"
  prop disabled, :boolean

  # @doc "Button with a glass effect"
  # prop glass, :boolean, default: false

  # @doc "Shows loading spinner"
  # prop loading, :boolean, default: false

  @doc "Disables click animation"
  prop noanimation, :boolean, default: false

  @doc "The size of the button"
  prop size, :string, values!: @sizes

  @doc "The shape of the button"
  prop shape, :string, values!: @shapes

  @doc "Additional classes for the button"
  prop class, :css_class, default: []

  @doc """
  Additional attributes to add onto the generated element
  """
  prop opts, :keyword, default: []

  @doc """
  The content of the generated `<button>` element. If no content is provided,
  the value of property `label` is used instead.
  """
  slot default

  def render(assigns) do
    ~F"""
    <button
      type={@type}
      role={@role}
      value={@value}
      disabled={@disabled},
      class={[
        "btn",
        "btn-active": @active,
        "btn-outline": @outline,
        # "glass": @glass,
        # "loading": @loading,
        "no-animation": @noanimation
      ] ++ button_classes(assigns) ++ @class }
      :attrs={@opts}>
      <#slot>{@label}</#slot>
    </button>
    """
  end

  defp button_classes(assigns) do
    button_color(assigns) ++
      button_style(assigns) ++
      button_size(assigns) ++
      button_shape(assigns)
  end

  defp button_color(%{color: color}) when color in @colors do
    case color do
      "primary" ->
        ["btn-primary"]

      "secondary" ->
        ["btn-secondary"]

      "accent" ->
        ["btn-accent"]

      "info" ->
        ["btn-info"]

      "success" ->
        ["btn-success"]

      "warning" ->
        ["btn-warning"]

      "error" ->
        ["btn-error"]
    end
  end

  defp button_color(_), do: []

  defp button_style(%{style: style}) when style in @styles do
    case style do
      "ghost" ->
        ["btn-ghost"]

      "link" ->
        ["btn-link"]
    end
  end

  defp button_style(_), do: []

  defp button_size(%{size: size}) when size in @sizes do
    case size do
      "lg" ->
        ["btn-lg"]

      "md" ->
        ["btn-md"]

      "sm" ->
        ["btn-sm"]

      "xs" ->
        ["btn-xs"]
    end
  end

  defp button_size(_), do: []

  defp button_shape(%{shape: shape}) when shape in @shapes do
    case shape do
      "wide" ->
        ["btn-wide"]

      "block" ->
        ["btn-block"]

      "circle" ->
        ["btn-circle"]

      "square" ->
        ["btn-square"]
    end
  end

  defp button_shape(_), do: []
end

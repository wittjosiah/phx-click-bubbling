defmodule SandboxWeb.PageLive do
  use Phoenix.LiveView

  alias SandboxWeb.PageView

  def render(assigns), do: Phoenix.View.render(PageView, "live.html", assigns)

  def mount(_, socket), do: {:ok, assign(socket, :color, "gray")}

  def handle_event("color", _, socket), do: {:noreply, assign(socket, :color, "red")}
end

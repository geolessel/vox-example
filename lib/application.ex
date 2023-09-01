defmodule VoxExample.Application do
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [VoxExample.Esbuild]

    opts = [strategy: :one_for_one, name: VoxExample.Supervisor]
    Supervisor.start_link(children, opts)
  end
end

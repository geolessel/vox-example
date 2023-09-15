defmodule VoxExample.Esbuild do
  def child_spec(args) do
    %{
      id: make_ref(),
      start: {__MODULE__, :start_link, [args]},
      restart: :transient
    }
  end

  def start_link(_args) do
    Task.start_link(Esbuild, :install_and_run, [:default, ~w(--sourcemap=inline --watch)])
  end

  def watch() do
    System.cmd("./node_modules/.bin/esbuild", ["default", "--watch", "--sourcemap=inline"],
      into: IO.stream(:stido, :line),
      stderr_to_stdout: true
    )
  end
end

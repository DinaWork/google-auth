defmodule GoogleAuth.Supervisor do
  @moduledoc false

  use Supervisor
  alias GoogleAuth.Config
  alias GoogleAuth.TokenStore

  def start_link(envs) do
    Supervisor.start_link(__MODULE__, envs, name: __MODULE__)
  end

  def init(envs) do
    children = [
      worker(Config, [envs]),
      worker(TokenStore, [])
    ]

    supervise(children, strategy: :one_for_one)
  end
end

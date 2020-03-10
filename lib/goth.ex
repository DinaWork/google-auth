defmodule GoogleAuth do
  use Application

  @moduledoc """
  Google + Auth = GoogleAuth.
  """

  # for now, just spin up the supervisor
  def start(_type, _args) do
    envs = Application.get_all_env(:google_auth)
    GoogleAuth.Supervisor.start_link(envs)
  end
end

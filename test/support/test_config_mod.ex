defmodule GoogleAuth.TestConfigMod do
  use GoogleAuth.Config

  def init(config) do
    {:ok, Keyword.put(config, :actor_email, :val)}
  end
end

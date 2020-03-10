use Mix.Config

try do
  config :google_auth,
    json: "config/dev-credentials.json" |> Path.expand |> File.read!
rescue
  _ -> :ok
end

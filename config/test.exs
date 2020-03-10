use Mix.Config

config :google_auth,
  json: "test/data/test-credentials.json" |> Path.expand |> File.read!
config :google_auth, config_root_dir: "test/missing"

# config :bypass, enable_debug_log: true

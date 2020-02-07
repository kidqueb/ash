use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :ash_server, AshServerWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :ash_server, AshServer.Repo,
  username: "postgres",
  password: "postgres",
  database: "ash_server_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

config :argon2_elixir, t_cost: 1, m_cost: 8

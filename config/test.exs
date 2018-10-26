use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :tt2, Tt2Web.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :tt2, Tt2.Repo,
  username: "tt2",
  password: "IeY0yaizeozo",
  database: "tt2_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :preact_stub,
  ecto_repos: [PreactStub.Repo]

# Configures the endpoint
config :preact_stub, PreactStubWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Ocf4CKb4Qd8mqA1lAxLZjj8/QuXIe+JUUyFtlEf/cJwkoL/RBJj8VwGpxrc1/FAq",
  render_errors: [view: PreactStubWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PreactStub.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

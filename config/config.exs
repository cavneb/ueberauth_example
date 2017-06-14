# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :ueberauth_example,
  ecto_repos: [UeberauthExample.Repo]

# Configures the endpoint
config :ueberauth_example, UeberauthExample.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "PakGmhoVc0XG/CLMsKF8AC9jngg3xFZzxk8vivJkXZLImR2K24cRhKxAHmJVW7U0",
  render_errors: [view: UeberauthExample.ErrorView, accepts: ~w(html json)],
  pubsub: [name: UeberauthExample.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :todos_api,
  ecto_repos: [TodosApi.Repo]

# Configures the endpoint
config :todos_api, TodosApi.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "4WRz8HMT2TrDGEYFnkJy1E2mNqQywuKU/F5jK31xr+0+H66TZdmvOHguhOfmaNHS",
  render_errors: [view: TodosApi.ErrorView, accepts: ~w(html json)],
  pubsub: [name: TodosApi.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

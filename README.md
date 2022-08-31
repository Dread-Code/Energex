# Energex

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## How to create a backend Graphql project with Elixir

  * Run command  `mix phx.new <app_name> --no-assets --no-html`
  * Add the following dependencies to the `mix.exs` file

    ```
    def deps do
      [
        ...
        {:absinthe, "~> 1.6"},
        {:absinthe_phoenix, "~> 2.0.0"}
      ]
    end
    ```
  * Run the following command for install the new dependencies `mix deps.get`

## How to configurate Phoenix with Graphql

  * Create your first scheme and resolver with theirs respectives Ecto Models
  * In the `router.ex` file create a new scope:
    ```
    scope "/api" do
      forward "/graphql", Absinthe.Plug, schema: EnergexWeb.Schema
      forward "/graphiql", Absinthe.Plug.GraphiQL, schema: EnergexWeb.Schema
    end
    ```


  

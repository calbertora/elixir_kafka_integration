# ElixirKafkaIntegration

run the docker compose file

inside the kafka container run:
`kafka-topics --create --bootstrap-server kafka:9092 --replication-factor 1 --partitions 3 --topic elixir_integration`

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `elixir_kafka_integration` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:elixir_kafka_integration, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/elixir_kafka_integration](https://hexdocs.pm/elixir_kafka_integration).


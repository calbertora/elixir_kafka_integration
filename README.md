# ElixirKafkaIntegration

run the docker compose file

inside the kafka container run:

```
kafka-topics --create --bootstrap-server kafka:9092 --replication-factor 1 --partitions 3 --topic elixir_integration
``` 

run the project
```
iex -S mix
```

Create the workers and produce messages

```
KafkaEx.create_worker(:pr)
{:ok, #PID<0.244.0>}
KafkaEx.produce("elixir_integration", 0, "calbertora")       
:ok
iex(3)> 
12:16:19.907 [debug] message: "calbertora"
0..10 |> Enum.each(fn n -> KafkaEx.produce("elixir_integration", 0, "calbertora #{n}") end)  
:ok
iex(4)> 
12:18:05.991 [debug] message: "calbertora 0"
 
12:18:05.993 [debug] message: "calbertora 1"
 
12:18:05.993 [debug] message: "calbertora 2"

12:18:05.993 [debug] message: "calbertora 3"
 
12:18:05.995 [debug] message: "calbertora 4"
 
12:18:05.995 [debug] message: "calbertora 5"

12:18:05.995 [debug] message: "calbertora 6"
 
12:18:05.997 [debug] message: "calbertora 7"
 
12:18:05.997 [debug] message: "calbertora 8"
 
12:18:05.998 [debug] message: "calbertora 9"
 
12:18:05.998 [debug] message: "calbertora 10"
 
12:18:06.987 [debug] Committed offset elixir_integration/0@22 for elixir_integration
```

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


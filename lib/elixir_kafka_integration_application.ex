defmodule ElixirKafkaIntegrationApplication do
  use Application

  def start(_type, _args) do
    consumer_group_opts = [
      # setting for the ConsumerGroup
      heartbeat_interval: 1_000,
      # this setting will be forwarded to the GenConsumer
      commit_interval: 1_000
    ]

    gen_consumer_impl = Kafka.Consumer
    consumer_group_name = "elixir_integration"
    topic_names = ["elixir_integration"]


    children = [
      # ... other children
      %{
        id: KafkaEx.ConsumerGroup,
        start: {
          KafkaEx.ConsumerGroup,
          :start_link,
          [gen_consumer_impl, consumer_group_name, topic_names, consumer_group_opts]
        }
      }
      # ... other children
    ]

    Supervisor.start_link(children, strategy: :one_for_one)
  end
end

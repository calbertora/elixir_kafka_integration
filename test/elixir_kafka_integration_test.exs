defmodule ElixirKafkaIntegrationTest do
  use ExUnit.Case
  doctest ElixirKafkaIntegration

  test "greets the world" do
    assert ElixirKafkaIntegration.hello() == :world
  end
end

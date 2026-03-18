defmodule IncreaserTest do
  use ExUnit.Case
  doctest Increaser

  test "greets the world" do
    assert Increaser.hello() == :world
  end
end

defmodule CounterTest do
  use ExUnit.Case

  describe "new/1" do
    test "converts a string integer to an integer" do
      assert Counter.new("42") == 42
    end

    test "converts a negative string integer" do
      assert Counter.new("-5") == -5
    end

    test "converts zero" do
      assert Counter.new("0") == 0
    end

    test "raises on non-numeric string" do
      assert_raise ArgumentError, fn ->
        Counter.new("abc")
      end
    end
  end

  describe "add/2" do
    test "adds two positive numbers" do
      assert Counter.add(1, 2) == 3
    end

    test "adds a negative number" do
      assert Counter.add(5, -3) == 2
    end

    test "adds zero" do
      assert Counter.add(7, 0) == 7
    end
  end

  describe "show/1" do
    test "returns a formatted string with the accumulator" do
      assert Counter.show(10) == "Acc eh? 10"
    end

    test "works with zero" do
      assert Counter.show(0) == "Acc eh? 0"
    end

    test "works with negative numbers" do
      assert Counter.show(-3) == "Acc eh? -3"
    end
  end
end

defmodule DiskvTest do
  use ExUnit.Case
  doctest Diskv

  test "greets the world" do
    assert Diskv.hello() == :world
  end
end

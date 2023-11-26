defmodule Examples.Modules.TwoTest do
  use ExUnit.Case
  doctest Examples

  test "without arguments" do
    assert Examples.Modules.Two.hello() == "Hello"
  end

  test "with Mike" do
    assert Examples.Modules.Two.hello("Mike") == "Hello Mike, Hello Joe"
  end

  test "with argument" do
    assert Examples.Modules.Two.hello("world") == "Hello world"
  end
end

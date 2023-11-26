defmodule Examples.Modules.OneTest do
  use ExUnit.Case
  doctest Examples

  test "greets the world from a module" do
    assert Examples.Modules.One.hello() == :world
  end

  test "welcomes a person" do
    assert Examples.Modules.One.welcome("Francis") == "Welcome Francis"
  end
end

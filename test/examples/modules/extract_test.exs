defmodule Examples.Modules.ExtractTest do
  use ExUnit.Case
  doctest Examples

  test "[inline] capitalizes and greets" do
    assert Examples.Modules.Extract.inline() == ["Hello, Joe", "Hello, Robert", "Hello, Mike"]
  end

  test "[extracted] capitalizes and greets" do
    assert Examples.Modules.Extract.extracted() == ["Hello, Joe", "Hello, Robert", "Hello, Mike"]
  end

  test "[shorthand] capitalizes and greets" do
    assert Examples.Modules.Extract.shorthand() == ["Joe", "Robert", "Mike"]
  end
end


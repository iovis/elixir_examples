defmodule Examples.Modules.Two do
  def hello do
    "Hello"
  end

  def hello("Mike") do
    "Hello Mike, Hello Joe"
  end

  def hello(name) do
    "Hello #{name}"
  end
end

defmodule ExamplesTest do
  use ExUnit.Case
  doctest Examples

  test "greets the world" do
    assert Examples.hello() == :world
  end

  test "lists" do
    # Apparently Elixir lists are linked lists,
    # so be careful of O(n) ops
    list = [1, 2, 3]

    assert list ++ [4, 5] == [1, 2, 3, 4, 5]
    assert list -- [2, 3] == [1]
    assert [0 | list] == [0, 1, 2, 3]

    # O(n)
    assert length(list) == 3

    # O(1)
    empty_list = []
    assert empty_list == []
  end

  test "tuples" do
    tuple = {:ok, 1}
    assert tuple_size(tuple) == 2
  end

  test "map" do
    map = %{
      key: "value",
      second: 2
    }

    assert Map.keys(map) == [:second, :key]

    map = Map.put(map, :list, [])

    assert map == %{
             key: "value",
             second: 2,
             list: []
           }
  end
end

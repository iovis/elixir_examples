defmodule Examples.Modules.Extract do
  # You can inline functions with `fn`
  def inline do
    Enum.map(names(), fn name ->
      capitalized = String.capitalize(name)
      "Hello, #{capitalized}"
    end)
  end

  # Or pass a function with `&` and `function_name/arity`
  def extracted do
    Enum.map(names(), &capitalize_name/1)
  end

  # `&` can also be used for shorthand syntax,
  # `&1` being the first argument and so on
  def shorthand do
    Enum.map(names(), &String.capitalize(&1))
  end

  # `defp` for private methods
  defp names do
    ["joe", "robert", "mike"]
  end

  defp capitalize_name(name) do
    capitalized = String.capitalize(name)
    "Hello, #{capitalized}"
  end
end

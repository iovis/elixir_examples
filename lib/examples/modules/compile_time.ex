defmodule Examples.Modules.CompileTime do
  IO.puts("This is run at compile time")

  # `@now` works as a "module attribute", it's evaluated at compile time
  # and it'll hold its value as a constant in run time
  @now Time.utc_now()

  def runtime do
    IO.puts("This was compiled at #{@now}. It is #{runtime_now()}")
  end

  defp runtime_now do
    Time.utc_now()
  end
end

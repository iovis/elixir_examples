defmodule Examples.Structs.SmsTest do
  use ExUnit.Case
  alias Examples.Structs.Sms

  test "struct initialization" do
    sms = %Sms{from: "me", to: "you"}

    assert Sms.other_party(sms) == sms.to
  end
end


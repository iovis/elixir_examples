defmodule Examples.Structs.Sms do
  # required keys
  @enforce_keys [:from, :to]

  # struct definition
  defstruct @enforce_keys ++ [:body, status: "delivered"]

  # method
  def other_party(sms) do
    case sms.status do
      "delivered" -> sms.to
      "received" -> sms.from
    end
  end
end

defmodule Examples.Structs.ConversationTest do
  use ExUnit.Case
  alias Examples.Structs.{Conversation, Sms}

  test "it works" do
    from_me = %Sms{from: "me", to: "you", status: "delivered"}
    from_you = %Sms{from: "you", to: "me", status: "received"}

    convo = Conversation.new([from_me])
    assert convo.other_party == "you"

    convo = Conversation.append(convo, from_you)
    assert length(convo.messages) == 2
  end
end

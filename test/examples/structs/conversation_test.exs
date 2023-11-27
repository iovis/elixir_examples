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

  test "comprehensions" do
    me = %Sms{from: "me", to: "you", status: "delivered"}
    you = %Sms{from: "you", to: "me", status: "received", body: "text"}
    other = %Sms{from: "+1-222-333-4444", to: "me", status: "received"}
    failed_other = Map.put(other, :status, "failed")

    convos = [
      Conversation.new([me, you]),
      Conversation.new([other, failed_other])
    ]

    got =
      for convo <- convos,
          message <- convo.messages,
          String.starts_with?(message.from, "+1") or message.from == "you",
          message.status == "received" do
        {message.from, message.body, length(convo.messages)}
      end

    assert got == [
             {"you", "text", 2},
             {"+1-222-333-4444", nil, 2}
           ]
  end
end

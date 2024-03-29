require 'test_helper'

class NotifierTest < ActionMailer::TestCase
  test "order_received" do
    mail = Notifier.order_received
    assert_equal "Order received", mail.subject
    assert_equal ["jinhuang11@yahoo.com"], mail.to
    assert_equal ["jinhuang11@gmail.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "order_shipped" do
    mail = Notifier.order_shipped
    assert_equal "Order shipped", mail.subject
    assert_equal ["jinhuang11@yahoo.com"], mail.to
    assert_equal ["jinhuang11@gmail.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end

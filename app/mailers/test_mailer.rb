class TestMailer < ApplicationMailer
  def test
    mail to: 'sccsa_exception@126.com', subject: "Test mail address"
  end
end

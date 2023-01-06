require "test_helper"

class NewsletterMailerTest < ActionMailer::TestCase
  test "newsletter_mailer" do
    mail = NewsletterMailer.newsletter_mailer
    assert_equal "Cartelera semanal en Cineópolis", mail.subject
    assert_equal ["from@example.com"], mail.from
  end

end

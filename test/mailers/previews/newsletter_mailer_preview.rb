# Preview all emails at http://localhost:3000/rails/mailers/newsletter_mailer
class NewsletterMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/newsletter_mailer/newsletter_mailer
  def newsletter_mailer
    NewsletterMailer.newsletter_mailer
  end

end

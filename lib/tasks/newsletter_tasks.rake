desc 'weekly newsletter email'
task weekly_newsletter_email: :environment do
  NewsletterMailer.newsletter_mailer.deliver!
end

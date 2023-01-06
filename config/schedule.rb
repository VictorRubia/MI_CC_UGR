# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

every :monday, at: '9am' do
  rake 'weekly_newsletter_email'
end

# Learn more: http://github.com/javan/whenever

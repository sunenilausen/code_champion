class ApplicationMailer < ActionMailer::Base
  default from: 'from@codechampion.heroku.com'
  layout 'mailer'
end

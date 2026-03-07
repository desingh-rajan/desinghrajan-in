class ApplicationMailer < ActionMailer::Base
  default from: "noreply@desinghrajan.in",
          reply_to: "desinghrajan@gmail.com"
  layout "mailer"
end

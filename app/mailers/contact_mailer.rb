class ContactMailer < ApplicationMailer
  def new_submission(contact)
    @contact = contact
    mail(
      to: "desinghrajan@gmail.com",
      reply_to: contact.email,
      subject: "[desinghrajan.in] New Contact: #{contact.project_type&.humanize || 'General'} from #{contact.name}"
    )
  end

  def confirmation(contact)
    @contact = contact
    mail(
      to: contact.email,
      subject: "Got your message, #{contact.name.split.first}! I'll be in touch soon."
    )
  end
end

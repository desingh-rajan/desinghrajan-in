class ContactsController < ApplicationController
  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      ContactMailer.new_submission(@contact).deliver_later
      ContactMailer.confirmation(@contact).deliver_later
      redirect_to root_path(anchor: "contact"), notice: "Thanks #{@contact.name}! Your message has been sent. I'll get back to you soon."
    else
      redirect_to root_path(anchor: "contact"), alert: @contact.errors.full_messages.to_sentence
    end
  end

  private

  def contact_params
    params.expect(contact: [ :name, :email, :project_type, :message ])
  end
end

class ContactMailer < ApplicationMailer
    def new_contact_email(email, message, name)
        @email = email
        @message = message
        @name = name
        mail(to: "olie263@me.com", subject: "New Message From #{name}", reply_to: @email)
    end
end

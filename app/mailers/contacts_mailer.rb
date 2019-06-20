class ContactsMailer < ApplicationMailer

    def contact_message(contact)
        @contact = contact
        mail( :to => "bradyriordan@hotmail.com", :subject => "You Have a Message From Your Website")
    end
    
end

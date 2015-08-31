class ContactMailer < ActionMailer::Base
    default to:'nguyenviethunghl00@gmail.com'
    def contact_email(name, email, body)
        @name = name
        @mail = mail
        @body = body
        
        mail(from: email, subject: 'Contact From Message')
    end
end
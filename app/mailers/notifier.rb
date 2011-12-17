class Notifier < ActionMailer::Base
  default :to => "eddielopezzzz@hotmail.com"
  
  def send_email(message)
    @message = message
    mail( :subject => @message.subject, :from => @message.email) do |format|
      format.text
    end
  end
end

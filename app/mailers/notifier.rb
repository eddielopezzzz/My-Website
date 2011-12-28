class Notifier < ActionMailer::Base
  
  default :to => "eddielopezzzz@hotmail.com"

  def new_message(message)
    @message = message
    #mail(:subject => "Email: #{message.email} - Name: #{message.name} - Subject: #{message.subject}", 
    #  :body => "#{message.body}", :from => "#{message.email}")
    mail(:subject => "#{message.subject}", :body => "#{message.body}", :from => "#{message.email}") do |format|
      format.html { render 'new_message'}
      format.text { render :text => 'new_message'}
    end
  end
  
end

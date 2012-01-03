class ContactController < ApplicationController
  
  def new
    @message = Message.new
  end

  def create
    @message = Message.new(params[:message])
    
    respond_to do |format|    
      if @message.valid? and verify_recaptcha(:model => @message, 
          :message => "Please re-enter the words from the image again!")
        Notifier.new_message(@message).deliver
        flash[:notice] = "Message was sent successfully"
        format.html { redirect_to root_path }
        format.js
      else
        flash[:notice] = "There were errors sending your message."
        format.html { render :action => "new" }
        format.js  {
            render :template=>"contact/create.js.erb", 
            :locals=>{ :item => @message, :notice => 'There were errors sending your message.'
            }}
      end
    end

  end
  
end

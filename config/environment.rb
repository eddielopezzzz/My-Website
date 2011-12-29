# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Website::Application.initialize!

ENV['RECAPTCHA_PUBLIC_KEY']='6LeRR8sSAAAAAOzjYtH_n1FrW2Qhff8TPMIpo0VL'
ENV['RECAPTCHA_PRIVATE_KEY']='6LeRR8sSAAAAABvYoEfvixiayNlsQK7f2orQx0yI'

ActionMailer::Base.delivery_method = :smtp 

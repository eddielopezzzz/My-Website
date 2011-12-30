Website::Application.configure do
  config.cache_classes = true

  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true

  config.action_dispatch.x_sendfile_header = "X-Sendfile"

  config.serve_static_assets = false

  config.i18n.fallbacks = true

  config.active_support.deprecation = :notify
  
  config.action_mailer.raise_delivery_errors = true
  
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    :address => "smtp.live.com",
    :port => 587,
    :user_name => "eddielopezzzz@hotmail.com",
    :password => "Kristian1",
    :tls => true
  }
  
end

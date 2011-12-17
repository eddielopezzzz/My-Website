module HomeHelper
  
  def gravatar_for(user, options = { :size => 50})
    #gravatar_image_tag(user.email.downcase, :alt => user.name,
    #                                        :class => 'gravatar',
    #                                        :gravatar => options)

  end
  
  def gravatar_for(email, options = { :size => 50})
    gravatar_image_tag(email.downcase, :alt => "gravatar_img", :class => 'gravatar')
  end
  
end

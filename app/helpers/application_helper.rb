module ApplicationHelper
  
  def facebook_like
    content_tag :iframe, nil, 
      :src => "http://www.facebook.com/plugins/like.php?app_id=141440452603597&href=#{CGI::escape(request.url)}&send=false&layout=box_count&show_faces=false&action=like&font=arial&colorscheme=light&locale=en_US",
      :scrolling => 'no', :frameborder => '0', :allowtransparency => true, :id => :facebook_like, :width => '100%'
  end
  

 
  def build_link
    link_to "eddie.heroku.com", "http://eddie.heroku.com" 
  end
  
end

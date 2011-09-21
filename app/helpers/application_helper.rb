module ApplicationHelper
  
  def facebook_like
    content_tag :iframe, nil, 
      :src => "http://www.facebook.com/plugins/like.php?href=#{CGI::escape(request.url)}&layout=button_count&show_faces=true&width=450&action=like&font=arial&colorscheme=dark&height=80",
      :scrolling => 'no', :frameborder => '0', :allowtransparency => true, :id => :facebook_like, :width => '100%'
  end
end

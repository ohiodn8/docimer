class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :header
   
  def not_found
    render(:status => 404)
  end  
    
  def internal_server_error
      render(:status => 500)
  end    
    
  private    
  def header
    @pages = Page.all
    @homes = Home.all
    @designs = Design.all.includes(:text_color, :body_color).order("created_at desc").limit(1).first(1) 
    @design = Design.new
    @text_color = TextColor.all  
    @body_color = BodyColor.all 
    @sections = Section.all.order("created_at desc").first(1)   
    @section = Section.new  
    @templates = Template.all.order("created_at desc").first(1)   
    @template = Template.new  
    @logotexts = Logotext.all.order("created_at desc").first(1) 
    @navtexts = Navtext.all 
    @footertexts = Footertext.all  
  end     
end
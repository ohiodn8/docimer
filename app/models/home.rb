class Home < ApplicationRecord
  # attribute :text_size, :integer, default: 22   
  if Rails.env.production?    
      has_attached_file :image, styles: { medium: "450x300>", thumb: "200x150>" }, default_url: "/assets/:style/missing.png", :storage => :cloudinary, :path => ':id/:style/:filename'
      validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/  
  else
      has_attached_file :image, styles: { medium: "450x300>", thumb: "200x150>" }, default_url: "/assets/:style/missing.png"
      validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/  
  end    
    
   
   

end

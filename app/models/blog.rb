class Blog < ApplicationRecord
    belongs_to :category
    extend FriendlyId
    friendly_id :title, use: :slugged 
  if Rails.env.production?    
      has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/assets/:style/missing2.png", :storage => :cloudinary, :path => ':id/:style/:filename'
      validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/  
  else
      has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/assets/:style/missing2.png"
      validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  end         
end

class Home < ApplicationRecord
  # attribute :text_size, :integer, default: 22   
  has_attached_file :image, styles: { medium: "450x300>", thumb: "200x150>" }, default_url: "/assets/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/     

end

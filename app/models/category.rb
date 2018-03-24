class Category < ApplicationRecord
    has_many :blogs, dependent: :destroy
    extend FriendlyId
    friendly_id :title, use: :slugged    
end

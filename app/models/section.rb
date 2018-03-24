class Section < ApplicationRecord
    before_save do
      self.option.gsub!(/[\[\]\"]/, "") if attribute_present?("option")
    end    
end

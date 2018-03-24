class TextColor < ApplicationRecord
    has_many :designs, dependent: :destroy
end

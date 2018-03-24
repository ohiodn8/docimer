class BodyColor < ApplicationRecord
    has_many :designs, dependent: :destroy
end

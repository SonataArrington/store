class Cart < ApplicationRecord
    belongs_to :customer
    has_many :cart_candies
    has_many :candies, through: :cart_candies
end

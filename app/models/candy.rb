class Candy < ApplicationRecord
     has_many :cart_candies
     has_many :carts, through: :cart_candies
end

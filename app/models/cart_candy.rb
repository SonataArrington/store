class CartCandy < ApplicationRecord
    belongs_to :candy 
    belongs_to :cart
end

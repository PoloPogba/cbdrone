class Cart < ApplicationRecord
  belongs_to :item
  belongs_to :user
  belongs_to :big_cart
end

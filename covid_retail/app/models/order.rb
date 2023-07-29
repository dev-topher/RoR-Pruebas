class Order < ApplicationRecord
  belongs_to :product
  belongs_to :client
  belongs_to :payment_type
end

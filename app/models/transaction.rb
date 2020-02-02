class Transaction < ApplicationRecord
  belongs_to :invoice
  has_many :invoice_items, through: :invoice
  has_many :items, through: :invoice_items
  has_many :merchants, through: :items
  has_many :customers, through: :items

  scope :successful, -> { where(result: "success") }
end

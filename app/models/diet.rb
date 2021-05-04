class Diet < ApplicationRecord
  # relationships
  belongs_to :user
  has_many :diet_items
end

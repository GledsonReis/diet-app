class Diet < ApplicationRecord
  # relationships
  belongs_to :user
  has_many :diet_items, dependent: :destroy, inverse_of: :diet

  accepts_nested_attributes_for :diet_items,
                                reject_if: :all_blank,
                                allow_destroy: true

  # validations
  validates :start_at, presence: true
  validates :finish_at, presence: true
  validates :ideal_weight, presence: true
end

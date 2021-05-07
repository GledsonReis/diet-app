class DietItem < ApplicationRecord
  # ralationships
  belongs_to :diet

  # enums
  enum meal: { breakfast: 0, lunch: 1, dessert: 2, snack: 3, dinner: 4, supper: 5 }, _prefix: :meal

  # validations
  validates :meal, presence: true
  validates :schedule, presence: true
  validates :description, presence: true
end

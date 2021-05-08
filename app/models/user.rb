class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :validatable

  # ralationships
  has_one :diet, dependent: :destroy
  has_many :weights, dependent: :destroy

  accepts_nested_attributes_for :weights,
                                reject_if: :all_blank,
                                allow_destroy: true

  def current_weight
    weights.last.value if weights.present?
  end
end

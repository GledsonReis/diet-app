class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :validatable

  # ralationships
  has_one :diet, dependent: :destroy
  has_many :weight, dependent: :destroy
end

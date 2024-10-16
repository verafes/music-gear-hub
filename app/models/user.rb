class User < ApplicationRecord
  validates :name, presence: true, format: { with: /\A[\p{L}\-' ]+\z/ }
  validates :email, presence: true, uniqueness: true, email: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :instruments

end

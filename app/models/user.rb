class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  validates :password, presence: true, length: { minimum: 6, maximum: 200 }, on: :create
  validates :email, presence: true

  has_many :cards
  has_many :contents
end

class Content < ApplicationRecord
  belongs_to :user, optional: true
  has_many :cards
end

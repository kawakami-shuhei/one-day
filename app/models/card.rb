class Card < ApplicationRecord

  validates :title, presence: true
  validates :datetime, presence: true

  belongs_to :user
  belongs_to :content
  
  # include RankedModel 
  # ranks :row_order, with_same: :content_id
end

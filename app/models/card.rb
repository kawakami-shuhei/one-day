class Card < ApplicationRecord
  belongs_to :user
  belongs_to :content
  
  include RankedModel 
  ranks :row_order, with_same: :content_id
end

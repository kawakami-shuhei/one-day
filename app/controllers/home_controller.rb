class HomeController < ApplicationController
  def index
    @contents = Content.all
    @cards = Card.rank(:row_order)
  end
end

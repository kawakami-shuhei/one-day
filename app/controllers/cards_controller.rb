class CardsController < ApplicationController
  before_action :set_content

  def new
    @card = Card.new
  end

  def create
    @card = Card.new(card_params)
    if @card.save
      redirect_to root_path
    else
      render action: :new
    end
  end

  def show
    @card = Card.find(params[:id])
  end

  private
  def card_params
    params.require(:card).permit(:title, :comment, :datetime).merge(content_id: params[:content_id])
  end

  def set_content
    @content = Content.find(params[:content_id])
  end
end

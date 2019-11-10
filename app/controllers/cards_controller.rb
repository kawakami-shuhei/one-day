class CardsController < ApplicationController
  before_action :set_content, :set_user

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

  def edit
    @card = Card.find(params[:id])
  end

  def update
    @card = Card.find(params[:id])
    @card.update(card_params)
    redirect_to content_card_path
  end

  def destroy
    @card = Card.find(params[:id])
    @card.destroy
    redirect_to root_path
  end

  def sort
    @card = Card.find(params[:card_id])
    card.update(card_params)
    render body: nil
  end

  private
  def card_params
    params.require(:card).permit(:title, :comment, :datetime, :row_order_position).merge(content_id: params[:content_id]).merge(user_id: current_user.id)
  end

  def set_content
    @content = Content.find(params[:content_id])
  end

  def set_user
    @user = User.find_by(id: current_user.id)
  end
end

class Api::V1::CardsController < ApplicationController

  def create
    @card = Card.create(card_params)
    render json: @card, status: 200
  end

  def destroy
    @card = Card.find(params[:id])
    @card.destroy
  end

  private

    def card_params
      params.permit(:deck_id, :value, :suit, :code)
    end

end

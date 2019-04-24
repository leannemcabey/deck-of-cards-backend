class Api::V1::DecksController < ApplicationController
  before_action :find_deck, only: [:show, :draw]

  def create
    puts params
    @deck = Deck.create(deck_params)
    render json: @deck, status: 200
  end

  def show
    render json: @deck, status: 200
  end

  def draw
    @cards_drawn = []
    if @deck.cards.length >=5
      while @cards_drawn.length < 5 do
        @card = @deck.cards[rand(@deck.cards.length)]
        if !@cards_drawn.include?(@card)
          @cards_drawn << @card
          @card.destroy
        end
      end
    end
    render json: @cards_drawn, status: 200
  end

  private

    def find_deck
      @deck = Deck.find(params[:id])
    end

    def deck_params
      params.require(:deck).permit(cards_attributes: [:value, :suit, :code])
    end

end

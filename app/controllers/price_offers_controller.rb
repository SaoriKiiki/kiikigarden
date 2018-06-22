class PriceOffersController < ApplicationController
	before_action :find_price_offers, only: [:show, :edit, :update, :destroy]
	
	def index
		@price_offers = PriceOffer.all 
	end

	def show
	end

	def opening
	end

	def interations
	end

	def closing
	end


	def new
		@price_offer = PriceOffer.new
	end

	def create
		@price_offer = PriceOffer.create(price_offers_params)
        redirect_to "/price_offers/#{@price_offer.id}"
	end

	

private

	def price_offers_params
		params.require(:price_offer).permit(:offer, :piece_id) 
	end	
	def find_price_offers
		@price_offer = PriceOffer.find(params[:id])
	end


end

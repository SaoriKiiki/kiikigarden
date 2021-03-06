class PiecesController < ApplicationController
before_action :find_pieces, only: [:show, :edit, :update, :destroy]

	def index
		@pieces = Piece.all
	end	
  
    def show   
    end

    def pieces_show
       	@pieces = Piece.all
    end
    def create
        @piece = Piece.create(piece_params)
        redirect_to "/pieces/#{@piece.id}"
    end 

    def new
   	@piece = Piece.new
    end


private

	def piece_params
		params.require(:piece).permit(:url, :artist_id, :raw_material, :concept_description, :cost) 
	end	
	def find_pieces
		@pieces = Piece.find(params[:id])
	end
end
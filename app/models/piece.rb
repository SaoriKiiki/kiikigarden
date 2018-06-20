class Piece < ApplicationRecord
	has_many :price_offers
	#belongs_to :artist, class_name: 'User', foreign_key: 'artist_id'
end
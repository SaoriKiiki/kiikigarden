class Createpriceoffers < ActiveRecord::Migration[5.2]
  def change
  	create_table :price_offers do |t|
  		t.integer :piece_id
  		t.integer :user_id
  		t.integer :offer

  		t.timestamps
  	end
  end
end

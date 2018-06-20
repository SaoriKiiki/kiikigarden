class Createpieces < ActiveRecord::Migration[5.2]
  def change
  		create_table :pieces do |t|
  			t.string :url
  			t.integer :artist_id
  			t.string :raw_material
  			t.string :concept_description
  			t.integer :cost

  			t.timestamps
  		end
  end
end

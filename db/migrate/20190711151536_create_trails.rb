class CreateTrails < ActiveRecord::Migration[5.2]
  def change
    create_table :trails do |t|
      t.integer :trail_id
      t.string :name
      t.string :type
      t.text :summary
      t.string :difficulty
      t.float :stars
      t.integer :starVotes
      t.string :location
      t.string :imgSqSmall
      t.string :imgSmall
      t.string :imgSmallMed
      t.string :imgMedium
      t.float :length
      t.integer :ascent
      t.integer :descent
      t.integer :high
      t.integer :low
      t.float :longitude
      t.float :latitude
      t.string :conditionStatus
      t.string :conditionDetails
      t.datetime :conditionDate
      t.timestamps
    end

    add_index :trails, :trail_id
  end
end

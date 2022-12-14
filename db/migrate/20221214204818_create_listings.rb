class CreateListings < ActiveRecord::Migration[7.0]
  def change
    create_table :listings do |t|
      t.integer :num_rooms, default: 1, null: false

      t.timestamps
    end
  end
end

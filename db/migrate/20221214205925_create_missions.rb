class CreateMissions < ActiveRecord::Migration[7.0]
  def change
    create_table :missions do |t|
      t.references :listing, null: false, foreign_key: true
      t.date :date, null: false
      t.integer :mission_type, null: false, default: 0
      t.integer :price, null: false

      t.timestamps
    end

    add_index :missions, [:listing_id, :date, :mission_type], unique: true
  end
end

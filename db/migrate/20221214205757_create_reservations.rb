class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.references :listing, null: false, foreign_key: true
      t.date :start_date, null: false
      t.date :end_date, null: false

      t.timestamps
    end

    add_index :reservations, [:listing_id, :start_date, :end_date], unique: true
  end
end

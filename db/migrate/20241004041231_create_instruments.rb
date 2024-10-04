class CreateInstruments < ActiveRecord::Migration[7.2]
  def change
    create_table :instruments do |t|
      t.string :name
      t.string :category
      t.decimal :price_per_day, precision: 5, scale: 2, default: 0
      t.boolean :available
      t.string :condition
      t.string :image

      t.timestamps
    end
  end
end

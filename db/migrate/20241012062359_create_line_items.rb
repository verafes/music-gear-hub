class CreateLineItems < ActiveRecord::Migration[7.2]
  def change
    create_table :line_items do |t|
      t.references :instrument, null: false, foreign_key: true
      t.references :cart, null: false, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.integer :total_days

      t.timestamps
    end
  end
end

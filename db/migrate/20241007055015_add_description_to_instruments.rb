class AddDescriptionToInstruments < ActiveRecord::Migration[7.2]
  def change
    add_column :instruments, :description, :text
  end
end

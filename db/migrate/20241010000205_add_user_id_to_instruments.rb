class AddUserIdToInstruments < ActiveRecord::Migration[7.2]
  def change
    add_column :instruments, :user_id, :integer
  end
end

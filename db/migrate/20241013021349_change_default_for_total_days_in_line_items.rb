class ChangeDefaultForTotalDaysInLineItems < ActiveRecord::Migration[7.2]
  def change
    change_column_default :line_items, :total_days, 1
  end
end

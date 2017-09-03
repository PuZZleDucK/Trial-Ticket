class AddTimestampToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :expiring, :timestamp
  end
end

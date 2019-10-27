class AddDatetimeColumnToCards < ActiveRecord::Migration[5.2]
  def change
    add_column :cards, :datetime, :datetime
  end
end

class AddDateColumnToCards < ActiveRecord::Migration[5.2]
  def change
    add_column :cards, :date, :date
  end
end

class RemoveColumnToCards < ActiveRecord::Migration[5.2]
  def change
    remove_column :cards, :date, :date
  end
end

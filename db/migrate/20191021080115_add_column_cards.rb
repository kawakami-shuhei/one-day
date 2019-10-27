class AddColumnCards < ActiveRecord::Migration[5.2]
  def change
    add_reference :cards, :content
  end
end

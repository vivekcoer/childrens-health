class AddColumnsToDisease < ActiveRecord::Migration[5.1]
  def change
    add_column :diseases, :url, :string
    add_column :diseases, :img, :string
  end
end

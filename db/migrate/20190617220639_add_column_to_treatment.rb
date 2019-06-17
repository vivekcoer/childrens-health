class AddColumnToTreatment < ActiveRecord::Migration[5.1]
  def change
    add_column :treatments, :url, :string
  end
end

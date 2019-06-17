class CreateDiseasesTreatmentsJoinTable < ActiveRecord::Migration[5.1]
  def change
     create_join_table :diseases, :treatments
 end
end

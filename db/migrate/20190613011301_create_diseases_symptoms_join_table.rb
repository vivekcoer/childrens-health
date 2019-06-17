class CreateDiseasesSymptomsJoinTable < ActiveRecord::Migration[5.1]
  def change
     create_join_table :diseases, :symptoms
 end
end

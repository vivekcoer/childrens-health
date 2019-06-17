class Symptom < ApplicationRecord
    has_and_belongs_to_many :disease_symptoms, dependent:  :destroy
    has_and_belongs_to_many :diseases, -> { distinct }, :through => :disease_symptoms
end

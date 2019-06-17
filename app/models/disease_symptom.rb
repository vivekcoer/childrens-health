class DiseaseSymptom < ApplicationRecord
    belongs_to :symptom
    belongs_to :disease
  end
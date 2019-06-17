class Disease < ApplicationRecord
    has_and_belongs_to_many :disease_symptoms, :dependent => :destroy
    has_and_belongs_to_many :disease_treatments, :dependent => :destroy
    has_and_belongs_to_many :symptoms, :through => :disease_symptoms, :uniq => true
    has_and_belongs_to_many :treatments, :through => :disease_treatments, :uniq => true
end
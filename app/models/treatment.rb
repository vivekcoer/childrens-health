class Treatment < ApplicationRecord
    has_and_belongs_to_many :disease_treatments, :dependent => :destroy
    has_and_belongs_to_many :diseases, -> { distinct }, :through => :disease_treatments
end
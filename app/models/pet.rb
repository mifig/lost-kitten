class Pet < ApplicationRecord
  SPECIES = ["Cat", "Dog", "Bear", "Lizard"]

  validates :name, presence: true
  validates :species, inclusion: { in: SPECIES }
end

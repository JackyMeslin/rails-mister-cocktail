class Dose < ApplicationRecord
  # each dose references a cocktail
  belongs_to :cocktail
  # each dose an ingredient
  belongs_to :ingredient
   # has a description
   # a cocktail and an ingredient
   # [cocktail, ingredient] pairings should be unique
  validates :description, presence: true
end

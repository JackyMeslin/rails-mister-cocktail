class Ingredient < ApplicationRecord
  # You can’t delete an ingredient if it used by at least one cocktail.
  has_many :doses, dependent: :destroy
  validates :name, presence: true, uniqueness: true
end

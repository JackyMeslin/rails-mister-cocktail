class Cocktail < ApplicationRecord
  # has_one_attached :photo
  has_many_attached :photos

  # When you delete a cocktail, you should delete associated doses (but not the ingredients as they can be linked to other cocktails).
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  validates :name, presence: true, uniqueness: true

end

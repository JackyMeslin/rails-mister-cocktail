class AddReferenceToDoses < ActiveRecord::Migration[6.0]
  def change
    add_reference :doses, :ingredients, foreign_key: true
    add_reference :doses, :cocktails, foreign_key: true
  end
end

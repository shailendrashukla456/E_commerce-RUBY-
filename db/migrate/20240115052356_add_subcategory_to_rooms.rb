class AddSubcategoryToRooms < ActiveRecord::Migration[6.1]
  def change
    add_reference :rooms, :subcategory, foreign_key: true
  end
end

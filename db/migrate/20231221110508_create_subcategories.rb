class CreateSubcategories < ActiveRecord::Migration[6.1]
  def change
    create_table :subcategories do |t|
      t.references :category, null: false, foreign_key: true
      t.string :subcategory_name
      t.string :description
      t.string :picture
      t.decimal :price

      t.timestamps
    end
  end
end

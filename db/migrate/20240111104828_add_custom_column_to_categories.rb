class AddCustomColumnToCategories < ActiveRecord::Migration[6.1]
  def change
    add_column :categories, :total_item, :integer
  end
end

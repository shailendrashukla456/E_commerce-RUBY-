class ActualPricetoSubcategory < ActiveRecord::Migration[6.1]
  def change
    add_column :subcategories, :actual_price, :float 
  end
end

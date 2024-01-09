class AddCardsCountToAddCards < ActiveRecord::Migration[6.1]
  def change
    add_column :add_cards, :cards_count, :integer
  end
end

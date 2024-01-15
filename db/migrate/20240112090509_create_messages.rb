class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.text :body
      t.references :user, foreign_key: true
      t.references :room, null: false, foreign_key: true
      t.references :admin_user, foreign_key: true

      t.timestamps
    end
  end
end

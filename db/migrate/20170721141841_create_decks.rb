class CreateDecks < ActiveRecord::Migration[5.0]
  def change
    create_table :decks do |t|
      t.string :name, null: false
      t.string :category
      t.references :creator, index: true
      t.timestamps
    end
  end
end

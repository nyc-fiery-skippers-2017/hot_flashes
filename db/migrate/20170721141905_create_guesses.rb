class CreateGuesses < ActiveRecord::Migration[5.0]
  def change
    create_table :guesses do |t|
      t.references :round, index: true
      t.references :card, index: true
      t.boolean :result, default: false
      t.timestamps
    end
  end
end

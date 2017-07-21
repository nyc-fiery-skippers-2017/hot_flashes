class CreateRounds < ActiveRecord::Migration[5.0]
  def change
    create_table :rounds do |t|
      t.references :deck, index: true
      t.references :player, index: true
      t.timestamps
    end
  end
end

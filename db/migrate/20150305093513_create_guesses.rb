class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.integer :round_id
      t.integer :deck_id
      t.integer :correctness

      t.timestamps null: false
    end
  end
end

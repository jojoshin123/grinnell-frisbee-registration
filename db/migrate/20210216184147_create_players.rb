class CreatePlayers < ActiveRecord::Migration[6.1]
  def change
    create_table :players do |t|
      t.string :name
      t.references :captain, null: false, foreign_key: true

      t.timestamps
    end
    add_index :players, [:captain_id, :created_at]
  end
end

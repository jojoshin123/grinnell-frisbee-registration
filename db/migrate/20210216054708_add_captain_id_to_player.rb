class AddCaptainIdToPlayer < ActiveRecord::Migration[6.1]
  def change
    add_column :players, :captain_id, :integer
  end
end

class AddEmailToCaptains < ActiveRecord::Migration[6.1]
  def change
    add_column :captains, :email, :string
  end
end

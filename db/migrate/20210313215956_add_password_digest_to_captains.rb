class AddPasswordDigestToCaptains < ActiveRecord::Migration[6.1]
  def change
    add_column :captains, :password_digest, :string
  end
end

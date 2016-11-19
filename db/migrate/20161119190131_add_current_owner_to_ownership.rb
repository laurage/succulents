class AddCurrentOwnerToOwnership < ActiveRecord::Migration[5.0]
  def change
    add_column :ownerships, :current_owner, :boolean
  end
end

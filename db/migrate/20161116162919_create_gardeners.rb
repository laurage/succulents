class CreateGardeners < ActiveRecord::Migration[5.0]
  def change
    create_table :gardeners do |t|
      t.string :first_name
      t.string :last_name
      t.string :status
      t.integer :spores

      t.timestamps
    end
  end
end

class CreateOwnerships < ActiveRecord::Migration[5.0]
  def change
    create_table :ownerships do |t|
      t.datetime :date
      t.references :gardener, foreign_key: true
      t.references :plant, foreign_key: true

      t.timestamps
    end
  end
end

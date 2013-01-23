class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :zip_code
      t.string :cable_provider
      t.string :favorite_nhl
      t.integer :official_rules
      t.integer :newsletter
      t.timestamps
    end
  end
end

class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :zip
      t.string :cab_provider
      t.string :fav_nhl
      t.integer :terms
      t.integer :insider_emails

      t.timestamps
    end
  end
end

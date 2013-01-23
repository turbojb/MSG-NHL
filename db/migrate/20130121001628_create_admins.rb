class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :email
      t.string :password
      t.string :password_confirmation
      t.integer :remember_me
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end

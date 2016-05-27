class CreateUserLogins < ActiveRecord::Migration
  def change
    create_table :user_logins do |t|
      t.string :name
      t.string :pass
      t.integer :age
      t.string :sex

      t.timestamps
    end
  end
end

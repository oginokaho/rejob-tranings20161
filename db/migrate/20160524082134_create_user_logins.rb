class CreateUserLogins < ActiveRecord::Migration
  def change
    create_table :user_logins do |t|
      t.string :uuid
      t.string :name

      t.timestamps
    end
  end
end

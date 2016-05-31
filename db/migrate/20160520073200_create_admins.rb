class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :user_id
      t.string :job_id

      t.string :title
      t.string :description
      t.string :area

      t.string :name
      t.string :pass
      t.integer :age
      t.string :sex

      t.timestamps
    end
  end
end

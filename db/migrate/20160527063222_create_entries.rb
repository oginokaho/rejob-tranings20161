class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :user_id
      t.string :job_id

      t.timestamps
    end
  end
end

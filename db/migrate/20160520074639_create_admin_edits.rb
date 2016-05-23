class CreateAdminEdits < ActiveRecord::Migration
    file
  def change
    create_table :admin_edits do |t|

      t.timestamps
    end
  end
end

class CreateAdminEdits < ActiveRecord::Migration
  def change
    create_table :admin_edits do |t|

      t.timestamps
    end
  end
end

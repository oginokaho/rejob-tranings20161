class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :area_name
      t.string :area
      t.string :title
      t.string :description
      t.timestamps null: false
    end
  end
end

class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.belongs_to :place, index: true
      t.string :shortname
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end

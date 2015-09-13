class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :shortname
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end

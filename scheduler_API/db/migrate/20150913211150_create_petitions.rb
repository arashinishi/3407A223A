class CreatePetitions < ActiveRecord::Migration
  def change
    create_table :petitions do |t|
      t.text :reason
      t.string :repeats

      t.timestamps null: false
    end
  end
end

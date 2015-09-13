class CreateIntervals < ActiveRecord::Migration
  def change
    create_table :intervals do |t|
      t.belongs_to :petition, index: true
      t.text :reason
      t.timestamp :from
      t.timestamp :to

      t.timestamps null: false
    end
  end
end

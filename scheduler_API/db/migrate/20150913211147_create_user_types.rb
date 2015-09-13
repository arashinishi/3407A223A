class CreateUserTypes < ActiveRecord::Migration
  def change
    create_table :user_types do |t|
      t.belongs_to :user, index: true
      t.text :description
      t.string :shortname
      t.boolean :can_create
      t.boolean :can_read
      t.boolean :can_edit
      t.boolean :admin

      t.timestamps null: false
    end
  end
end

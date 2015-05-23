class CreateBoxes < ActiveRecord::Migration
  def change
    create_table :boxes do |t|
      t.references :user, index: true
      t.string :name
      t.string :description

      t.timestamps null: false
    end
    add_foreign_key :boxes, :users
  end
end

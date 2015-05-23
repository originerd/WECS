class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories do |t|
      t.references :box, index: true
      t.string :type
      t.string :description

      t.timestamps null: false
    end
    add_foreign_key :histories, :boxes
  end
end

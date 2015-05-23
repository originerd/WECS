class AddUserToHistory < ActiveRecord::Migration
  def change
    add_reference :histories, :user, index: true
    add_foreign_key :histories, :users
  end
end

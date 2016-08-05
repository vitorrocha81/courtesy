class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.string :name
      t.string :email
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

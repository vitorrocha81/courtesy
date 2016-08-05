class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :company
      t.string :position

      t.timestamps null: false
    end
  end
end

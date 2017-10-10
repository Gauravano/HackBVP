class CreateUserdetails < ActiveRecord::Migration
  def change
    create_table :userdetails do |t|
      t.string :name
      t.string :address
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

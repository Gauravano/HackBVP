class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.integer :cost
      t.string :category
      t.references :userdetails, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

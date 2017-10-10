class CreateOrgcategories < ActiveRecord::Migration
  def change
    create_table :orgcategories do |t|
      t.string :name
      t.references :userdetails, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

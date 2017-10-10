class AddFieldsToUserdetails < ActiveRecord::Migration
  def change
    add_column :userdetails, :numslots, :integer
    add_column :userdetails, :numvacant, :integer
    add_column :userdetails, :mobilenum, :string
  end
end

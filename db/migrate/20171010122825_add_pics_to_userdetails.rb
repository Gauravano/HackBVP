class AddPicsToUserdetails < ActiveRecord::Migration
  def change
    add_column :userdetails, :profile_picture, :string
    add_column :userdetails, :coverpic, :string
  end
end

class AddLatitudeAndLongitudeToUserdetail < ActiveRecord::Migration
  def change
    add_column :userdetails, :latitude, :float
    add_column :userdetails, :longitude, :float
  end
end

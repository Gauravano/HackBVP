class Userdetail < ActiveRecord::Base
  belongs_to :user
  validates :name, presence: true
  validates :address, presence: true
  validates :user_id, presence: true
  validates :numslots, presence: true
  validates :numvacant, presence: true
  validates :mobilenum, presence: true

  # geocoded_by :address, :latitude  => :lat, :longitude => :lon
  # geocoded_by :address
  # after_validation :geocode
  #
  # # def address userid
  # #    Userdetail.where(user_id: userid)[0].address
  # # end
  #
  # def getlatitude userid
  #    Userdetail.where(user_id: userid)[0].latitude
  # end
  #
  # def getlongitude userid
  #    Userdetail.where(user_id: userid)[0].longitude
  # end


end

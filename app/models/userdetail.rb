class Userdetail < ActiveRecord::Base
  belongs_to :user
  validates :name, presence: true
  validates :address, presence: true
  validates :user_id, presence: true
  validates :numslots, presence: true
  validates :numvacant, presence: true
  validates :mobilenum, presence: true
end

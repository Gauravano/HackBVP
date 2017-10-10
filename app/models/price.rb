class Price < ActiveRecord::Base
  belongs_to :userdetails
  validates :cost, presence: true
  validates :category, presence: true
  validates :userdetails_id, presence: true
end

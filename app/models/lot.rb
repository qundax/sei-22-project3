class Lot < ActiveRecord::Base
  belongs_to :carpark
  belongs_to :vehicle, optional: true
  has_many :offences
  validates :lotNumber, presence: true, uniqueness: { case_sensitive: false }
end
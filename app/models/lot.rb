class Lot < ActiveRecord::Base
  belongs_to :carpark
  belongs_to :vehicle, optional: true
end
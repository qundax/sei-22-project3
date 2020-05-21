class Carpark < ActiveRecord::Base
  has_many :lot
  belongs_to :region
end
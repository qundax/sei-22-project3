class Carpark < ActiveRecord::Base
  has_many :lots
  has_many :vehicles, through: :lots
  belongs_to :region
end
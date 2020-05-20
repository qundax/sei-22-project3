class Carpark < ActiveRecord::Base
  has_many :lot

  validates :location, presence: true, uniqueness: { case_sensitive: false }
  validates :totallots, presence: true, numericality: { only_integer: true }
  validates :photo_url, presence: true
end
class Carpark < ActiveRecord::Base
  has_many :lots
  has_many :vehicles, through: :lots
  belongs_to :region

  validates :location, presence: true, uniqueness: { case_sensitive: false }
  validates :totallots, presence: true, numericality: { only_integer: true }
#   validates :photo_url, presence: true
end
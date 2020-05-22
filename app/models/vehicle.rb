class Vehicle < ApplicationRecord
has_many :carparks, through: :lots
belongs_to :user
has_many :lots
validates :license_plate, presence: true, length: { minimum: 3, maximum: 8}, uniqueness: { case_sensitive: false }
validates :vehicle_model, presence: true

end
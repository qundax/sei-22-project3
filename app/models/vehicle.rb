class Vehicle < ApplicationRecord
has_many :lot
belongs_to :user

validates :license_plate, presence: true, length: { minimum: 3, maximum: 8}, uniqueness: { case_sensitive: false }
validates :vehicle_model, presence: true

end
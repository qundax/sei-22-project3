class Vehicle < ApplicationRecord
has_many :carparks, through: :lots
belongs_to :user
end
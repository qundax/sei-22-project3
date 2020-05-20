class Vehicle < ApplicationRecord
has_many :lot
belongs_to :user
end
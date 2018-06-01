class Appointment < ApplicationRecord
  belongs_to :table
  has_many :reservations
end

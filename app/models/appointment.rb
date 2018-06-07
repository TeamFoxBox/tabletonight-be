class Appointment < ApplicationRecord
  belongs_to :table
  has_many :reservations
  validates :date, :time true
end

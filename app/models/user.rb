class User < ApplicationRecord
    has_secure_password
    has_many :bookings

    # validates :name, :email, :password, presence: true


end

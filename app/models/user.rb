class User < ApplicationRecord
    has_secure_password
    has_many :reservations

    validates :name, :email, :password, presence: true
end

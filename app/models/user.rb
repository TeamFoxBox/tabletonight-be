class User < ApplicationRecord
    has_secure_password
    has many :reservations
end

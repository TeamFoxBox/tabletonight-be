class User < ApplicationRecord
    has_secure_password

    has many :reservations

    validates :name, :email, :password, presence: true

end

class User < ApplicationRecord
    has_secure_password
    has_many :usermovies
    has_many :movies, through: :usermovies
end

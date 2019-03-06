class User < ApplicationRecord
    has_secure_password
    has_many :usermovies
    has_many :movies, through: :usermovies
    has_many :friends, :class_name => 'User', :foreign_key => 'user1_id'
    has_many :friends2, :class_name => 'User', :foreign_key => 'user2_id'
end

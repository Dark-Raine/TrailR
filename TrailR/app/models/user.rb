class User < ApplicationRecord
    has_secure_password
    has_many :usermovies
    has_many :movies, through: :usermovies
    has_many :friendships
    has_many :friends, :class_name => 'User', through: :friendships, :foreign_key => 'friend_id'
    has_many :friends, :class_name => 'User', through: :friendships, :foreign_key => 'user_id'


    # has_many :sent_messages, :class_name => 'Message', :foreign_key => 'sender_id'
    # has_many :received_messages, :class_name => 'Message', :foreign_key => 'receiver_id'



    # has_many :friends, :class_name => 'User', through: :friendships, :source => 'user1'
    # has_many :friends2, :class_name => 'User', through: :friendships, :source => 'user2'
end

class Friendship < ApplicationRecord
    # belongs_to :user1, class_name: 'User'
    # belongs_to :user2, class_name: 'User'
    
    belongs_to :user
    belongs_to :friend, :class_name => 'User'

    # :friend_user_id, :user_id
end



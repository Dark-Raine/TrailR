class CreateFriendships < ActiveRecord::Migration[5.2]
  def change
    create_table :friendships do |t|
      t.string :user1_id
      t.string :user2_id

      t.timestamps
    end
  end
end

User.create(:name => "goatsahoy")
User.create(:name => "chipsahoy")
User.create(:name => "tofubacon")
User.create(:name => "redpanda")

Follow.create(:user_id => 1, :follower_id => 2)
Follow.create(:user_id => 1, :follower_id => 3)
Follow.create(:user_id => 2, :follower_id => 1)
Follow.create(:user_id => 2, :follower_id => 4)
Follow.create(:user_id => 3, :follower_id => 4)

# you can also just populate the Follow table as such:

User.find(4).followers << User.find(1)
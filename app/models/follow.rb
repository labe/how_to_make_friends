class Follow < ActiveRecord::Base
  belongs_to  :user
  belongs_to  :follower, 
              :class_name => "User"  #there is no "Follower" model, so we need to tell AR to associate :follower to the User model
end

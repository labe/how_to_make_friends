class User < ActiveRecord::Base
  # all the people who follow this user
  # self.id == user_id
  has_many :follows                           
  has_many :followers, :through => :follows

  # all the people this user follows
  # self.id == follower.id
  # MODIFICATIONS FOR THE join
  has_many  :is_followings,               # alias the join table
            :class_name => "Follow",      # link this to the (original) model (name)
            :foreign_key => :follower_id  # specify which column in this join table is to be used as the foreign key

  has_many  :followings,                  # alias the association/method
            :source => :user,             # specify the source. there is no "following" model, but there is a "user" model, which is what we really mean
            :through => :is_followings,   # specify the join table which is aliased for this association
            :foreign_key => :user_id      # specify which column in this join table is to be used as the foreign key        


  #alternatively, instead of creating an ActiveRecord association for user.is_followings, you can just hand-write the method:
  def is_following
    Follow.where(:follower_id => self.id).map do |follow|
      User.find(follow.user_id)
    end
  end
end
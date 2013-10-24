class CreateFollows < ActiveRecord::Migration
  def change
    create_table :follows do |t|
      t.belongs_to  :user
      t.belongs_to  :follower   # we can't just duplicate line 4, but we need to specify that a row in this table belongs to *another* user, so we alias :user to :follower and tie this alias back to :user in the model
    end
  end
end
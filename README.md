#How do I join a table to itself?!

Read on, good friend, and follow along.

(womp womp)

##Setup

* Clone the repo
* <code>$ bundle install</code>

##Make friends!

<code>$ rake db:yolo</code>

(Check out <code>db/seeds.rb</code> if curiosity strikes you)

##Verify friends!

* <code>$ shotgun</code>
* Open <code>http://localhost:9393/</code> in your browser

#Wait wait, what's going on here?

See comments in 

* <code>db/migrate/20131024095222_create_follows.rb</code>
* <code>app/models/user.rb</code>
* <code>app/models/follow.rb</code>

###Still have questions? <code>lora.abe@gmail.com</code>

Or come find me in person. I'm somewhere.
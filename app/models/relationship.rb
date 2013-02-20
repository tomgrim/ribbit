class Relationship < ActiveRecord::Base
  attr_accessible :followed_id, :follower_id

  belongs_to :follower, classname: 'User'
  belongs_to :followed, classname: 'User'

end

class Post < ActiveRecord::Base
  attr_accessible :title, :url, :user_id, :upvotes

  belongs_to :user
  has_many :comments
end
class Post < ActiveRecord::Base
  attr_accessible :title, :url, :user_id
  validates_presence_of :title, :url, :user_id

  belongs_to :user
  has_many :comments
  has_many :votes
end

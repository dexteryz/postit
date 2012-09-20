class Post < ActiveRecord::Base
  attr_accessible :title, :url, :user_id
  validates_presence_of :title, :url, :user_id

  belongs_to :user
  has_many :comments
  has_many :votes

  def total_votes
      self.votes.where(votes: true).size - self.votes.where(votes: false).size
  end
end

class User < ActiveRecord::Base
  attr_accessible :name, :email
  validates_presence_of :name, :email
  
  has_many :posts
  has_many :comments
end

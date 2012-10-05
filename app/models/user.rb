class User < ActiveRecord::Base
  authenticates_with_sorcery!
  attr_accessible :name, :email, :password
  validates_presence_of :name, :email, :password
  
  has_many :posts
  has_many :comments
end

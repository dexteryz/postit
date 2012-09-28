class User < ActiveRecord::Base
  authenticates_with_sorcery!
  attr_accessible :name, :email
  validates_presence_of :name, :email
  
  has_many :posts
  has_many :comments
end

class Post < ActiveRecord::Base
  attr_accessible :title, :url, :user_id

  belongs_to :user
end

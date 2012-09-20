class Vote < ActiveRecord::Base
  attr_accessible :post_id, :votes

  belongs_to :post
end

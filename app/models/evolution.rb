class Evolution < ActiveRecord::Base
  attr_accessible :complete, :name, :opportunity_id, :user_id
end

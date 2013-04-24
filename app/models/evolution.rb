class Evolution < ActiveRecord::Base
  attr_accessible :complete, :name, :opportunity_id, :user_id
  has_many :assignments
  has_many :opportunities, :through => :assignments
end

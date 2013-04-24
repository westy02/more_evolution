class UserType < ActiveRecord::Base
  attr_accessible :description, :name
  has_many :assignments
  has_many :user_types, :through => :assignments
end

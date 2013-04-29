class Company < ActiveRecord::Base
  attr_accessible :email, :name
  has_many :assignments
  has_many :users, :through => :assignments
  has_many :opportunities
end

class Company < ActiveRecord::Base
  attr_accessible :email, :name
  has_many :users
end

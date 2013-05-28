class Lifecycle < ActiveRecord::Base
  attr_accessible :description, :name, :rank
  has_many :assignments, :dependent => :destroy
  has_many :opportunities, :through => :assignments, :dependent => :destroy
end

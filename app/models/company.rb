class Company < ActiveRecord::Base
  attr_accessible :email, :name
  has_many :assignments
  has_many :users, :through => :assignments
  has_many :opportunities
  scope :active, joins(:assignments).where(:assignments => {:active_company => "TRUE"})
  scope :not_active, joins(:assignments).where(:assignments => {:active_company => "FALSE"})
end

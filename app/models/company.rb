class Company < ActiveRecord::Base
  attr_accessible :email, :name, :assignments_attributes
  has_many :assignments
  has_many :users, :through => :assignments
  has_many :opportunities
  accepts_nested_attributes_for :assignments, allow_destroy: true
  scope :active, joins(:assignments).where(:assignments => {:active_company => "TRUE"})
  scope :inactive, joins(:assignments).where(:assignments => {:active_company => "FALSE"})
end

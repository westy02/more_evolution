class Opportunity < ActiveRecord::Base
  attr_accessible :company_id, :suggestion, :task, :user_id
  belongs_to :company
  belongs_to :user
  has_many :assignments
  has_many :evolutions, :through => :assignments
end

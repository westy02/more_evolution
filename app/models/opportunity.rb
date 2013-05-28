class Opportunity < ActiveRecord::Base
  attr_accessible :company_id, :suggestion, :task, :user_id, :closed
  belongs_to :company
  belongs_to :user
  has_many :assignments, :dependent => :destroy
  has_many :lifecycles, :through => :assignments, :dependent => :destroy
  scope :closed, where(:closed => true)
  scope :open, where(:closed => false)
end

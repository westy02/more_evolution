class Assignment < ActiveRecord::Base
  attr_accessible :evolution_id, :opportunity_id, :user_id, :user_type_id, :company_id
  belongs_to :user_type
  belongs_to :user
  belongs_to :company
  belongs_to :opportunity
  belongs_to :evolution
end

class Opportunity < ActiveRecord::Base
  attr_accessible :company_id, :suggestion, :task, :user_id
end

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :firstname, :lastname, :active_company_id
  # attr_accessible :title, :body
  #belongs_to :company
  has_many :opportunities
  has_many :microposts
  has_many :assignments, :dependent => :destroy
  has_many :user_types, :through => :assignments, :dependent => :destroy
  has_many :companies, :through => :assignments, :dependent => :destroy
  
end

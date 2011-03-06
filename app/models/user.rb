class User < ActiveRecord::Base
  has_one :address
  has_many :interest_users
  has_many :interests, :through => :interest_users

  accepts_nested_attributes_for :address
  accepts_nested_attributes_for :interest_users, :allow_destroy => true

  validates_presence_of :email
end

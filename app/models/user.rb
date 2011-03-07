class User < ActiveRecord::Base
  has_one :address
  has_many :interest_users
  has_many :interests, :through => :interest_users
  has_many :tasks

  accepts_nested_attributes_for :address
  accepts_nested_attributes_for :interest_users, :allow_destroy => true
  accepts_nested_attributes_for :tasks, :allow_destroy => true, :reject_if => :all_blank

  validates_presence_of :email
end

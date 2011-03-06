class User < ActiveRecord::Base
  has_one :address

  accepts_nested_attributes_for :address

  validates_presence_of :email
end

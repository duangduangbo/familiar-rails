class User < ApplicationRecord
  validates_presence_of :name, :email
  validates_uniqueness_of :name, :email
  has_secure_password
  has_many :comments
  has_many :articles

end

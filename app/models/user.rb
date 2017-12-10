class User < ApplicationRecord
  before_create { generate_token(:auth_token) }
  validates_presence_of :name, :email
  validates_uniqueness_of :name, :email
  has_secure_password
  has_many :comments
  has_many :articles

  def generate_token(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while User.exists?(column => self[column])
  end

end

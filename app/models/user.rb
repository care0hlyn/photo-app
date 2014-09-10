class User < ActiveRecord::Base

  has_secure_password

  validates :password, :presence => { :on => :create }
  validates :name, :presence => true
  validates :password_confirmation, :presence => true
  validates_uniqueness_of :email

  has_many :photos
  has_many :tags

end

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :confirmable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Custom field validations in user model
  validates :username, presence: true, :uniqueness => { :case_sensitive => false }
  validates :address, presence: true

  #Code for geocoding.
  geocoded_by :address
  after_validation :geocode 
end

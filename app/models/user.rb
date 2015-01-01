class User < ActiveRecord::Base
  has_many :brew_sessions, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Custom field validations in user model
  validates :username, presence: true, :uniqueness => { :case_sensitive => false }
  validates :address, presence: true

  # For geocoder.
  geocoded_by :address
  after_validation :geocode
end

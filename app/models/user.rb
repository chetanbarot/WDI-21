class User < ApplicationRecord
  has_secure_password

  validates :username, presence: true, uniqueness: true
  validates :username, length: { in: 3..20 }
  validates :role, presence: true
  validates :email, presence: true, uniqueness: true

  before_validation :add_default_role

  has_many :recipes, dependent: :destroy


  mount_uploader :profile_image, ProfileImageUploader

  private
    def add_default_role
      self.role = "user" if self.role.nil?
    end
end

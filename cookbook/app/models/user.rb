class User < ApplicationRecord
  has_secure_password

  validates :username, presence: true, uniqueness: true
  validates :username, length: { in: 3..20 }
  validates :role, presence: true

  before_validation :add_default_role

  private
    def add_default_role
      self.role = "user" if self.role.nil?
    end
end

class User < ApplicationRecord
  before_save { self.email = email.downcase }
  validates :username, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX }, uniqueness: {case_sensative: false}
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
  has_many :quizzes
end

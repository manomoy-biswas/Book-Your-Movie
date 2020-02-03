class User < ApplicationRecord
  # has_secure_password
  after_validation {self.email = self.email.downcase}
  VALID_EMAIL_REGX=/\A([\w+\-]\.?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i.freeze
  VALID_PHONE_REGX=/\A[6-9]{1}[0-9]{9}\z/.freeze
  validates :name, presence: true, length:{maximum: 255}
  validates :email, presence: true, length:{maximum: 255}, format:{with: VALID_EMAIL_REGX}
  validates :password, presence: true, length:{minimum:6,maximum:50}
  validates :mobileno, presence: true, length: {is:10}, uniqueness:{case_sensetive: false}, format:{with: VALID_PHONE_REGX}
end

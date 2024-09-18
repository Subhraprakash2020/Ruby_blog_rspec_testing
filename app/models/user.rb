class User < ApplicationRecord
  has_many :docs, dependent: :destroy
  has_secure_password
end

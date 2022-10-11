class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true,
                    length: { maximum: 255 },
                    uniqueness: { message: "はすでに使用されています" },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :password, length: { minimum: 6 }
  before_validation { email.downcase! }

  has_secure_password

  has_many :tasks
end

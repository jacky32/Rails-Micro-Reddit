class User < ApplicationRecord
  has_many :posts
  has_many :comments, through: :posts

  validates :username, :password, :email, presence: true
  validates :username, length: { in: 4..20 }, uniqueness: true
  validates :password, length: { in: 6..20 }
  validates :email, uniqueness: true
end

class Post < ApplicationRecord
  belongs_to :user, foreign_key: :user_id
  has_many :comments

  validates :title, :body, presence: true
end

class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  #validates for no empty title nor body in the post
  validates :title, presence: true, length: { minimum: 5 }
  validates :body, presence: true
end

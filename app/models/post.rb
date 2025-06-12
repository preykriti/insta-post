class Post < ApplicationRecord
  has_one_attached :photo
  has_many :comments
  belongs_to :user
  validates :photo, :description, presence: true
end

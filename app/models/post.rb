class Post < ApplicationRecord
  has_one_attached :photo
  has_many :comments, dependent: :destroy
  belongs_to :user
  validates :photo, :description, presence: true

  acts_as_votable

  # def user_email
  #   user.email 
  # end

  delegate :email, to: :user, prefix: true

  
end

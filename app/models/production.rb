class Production < ApplicationRecord
  mount_uploader :photo, AvatarUploader

  validates :name, :description,  presence: true

  has_many :theatres
  belongs_to :user
end

class Lieu < ApplicationRecord
  mount_uploader :photo, AvatarUploader

  validates :name, presence: true
  has_many :theatres
end

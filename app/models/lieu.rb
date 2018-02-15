class Lieu < ApplicationRecord

  validates :name, presence: true
  has_many :theatres
end

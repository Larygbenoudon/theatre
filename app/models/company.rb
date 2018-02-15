class Company < ApplicationRecord

  validates :name, presence: true

  has_many :theatres
  belongs_to :user
end

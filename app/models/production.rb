class Production < ApplicationRecord

  validates :name, :description,  presence: true

  has_many :theatres
  belongs_to :user
end

class Theatre < ApplicationRecord

  validates :titre, :lieu, presence: true

  belongs_to :company
  belongs_to :production
  has_one :lieu
end

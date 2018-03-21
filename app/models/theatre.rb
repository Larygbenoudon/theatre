class Theatre < ApplicationRecord

  validates :titre, :lieu_id, presence: true

  belongs_to :company
  belongs_to :production
  has_one :lieu
end

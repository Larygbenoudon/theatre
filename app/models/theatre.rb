class Theatre < ApplicationRecord
  include PgSearch

  validates :titre, :lieu_id, presence: true
  pg_search_scope :search_titre, :against => :titre,  :using => { :tsearch => {:prefix => true} }

  belongs_to :company
  belongs_to :production
  has_one :lieu
end

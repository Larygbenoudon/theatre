class User < ApplicationRecord
  mount_uploader :photo, AvatarUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :email, :first_name, :last_name, presence: true

  has_many :productions

  def manager?
    self.admin == true
  end

  def company
   Company.where(user_id: self.id)
  end
end

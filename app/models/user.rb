class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Associations
  has_many :reservations, dependent: :destroy
  belongs_to :golf_club

  # Callbacks
  before_validation :set_golf_club

  # Instance Methods
  def set_golf_club
    self.golf_club = GolfClub.first
  end

  def full_name
    first_name + ' ' + last_name
  end
end

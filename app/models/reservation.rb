class Reservation < ApplicationRecord
  # Associations
  belongs_to :golf_club
  belongs_to :user

  # Validations
  validates :tee_time, presence: true
  validate :timeslot_available

  # Instance Methods
  def timeslot_available
    existing_reservation = Reservation.where("golf_club_id = ? and tee_time = ?", self.golf_club_id, self.tee_time)
    if existing_reservation.present?
      errors[:base] << "The timeslot is taken. Please select a different time."
    end
  end
end

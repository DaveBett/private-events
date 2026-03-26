class Event < ApplicationRecord
  belongs_to :creator, foreign_key: :creator_id, class_name: "User"

  has_many :attendances, foreign_key: :attended_event_id, class_name: "Attendance"
  has_many :attendees, through: :attendances, source: :attendee


  scope :future, -> { where("date >= ?", Time.now) }
  scope :past, -> { where("date < ?", Time.now) }
end

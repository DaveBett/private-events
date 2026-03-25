class Attendance < ApplicationRecord
  belongs_to :attendee, class_name: "User"
  belongs_to :attended_event, class_name: "Event"
  # enum :status, { not_going: 0, going: 1 }
end

class User < ActiveRecord::Base
  validates :name, presence: true
  # using valid_email
  validates :email, presence: true, email: true
  validates :subdomain,
            exclusion: { in: %w(www us ca jp),
                         message: "%{value} is reserved" }
  # using validate_timeliness with custom date format
  validates :birthdate, timeliness: {type: :date, format: 'dd-mm-yyyy'}
end

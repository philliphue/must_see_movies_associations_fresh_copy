class Director < ActiveRecord::Base

  validates :name, :presence => true, uniqueness: { scope: :dob,
    message: "Invalid entry" }

end

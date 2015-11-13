class Movie < ActiveRecord::Base

  validates :title, :presence => true
  validates :director_id, :presence => true
  validates :title, :uniqueness => { :key => "value", :scope => :year,
    message: "Year should be unique" }
  validates :year, :numericality => { only_integer: true, :greater_than_or_equal_to => 1870, :less_than_or_equal_to => 2050}
  validates :duration, :numericality => { only_integer: true, :greater_than_or_equal_to => 0, :less_than_or_equal_to => 2764800 }
end

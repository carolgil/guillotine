class Show < ActiveRecord::Base
  attr_accessible :dj, :end, :name, :semester, :start, :weekday

  validates :dj, :end, :name, :semester, :start, :weekday, :presence => true
  validates :weekday, :numericality => { :less_than_or_equal => 6, :greater_than_or_equal => 0, :only_integer => true } # The week starts with Monday = 0
  validates :semester, :numericality => { :only_integer => true, :greater_than => 0 }
end

class Movie < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :duration, :uniqueness => { :scope => [:year] }

  validates :duration, :presence => true

  validates :duration, :numericality => { :less_than_or_equal_to => 2764800, :greater_than_or_equal_to => 0 }

  validates :year, :numericality => { :less_than_or_equal_to => 2050, :greater_than_or_equal_to => 1870 }

end

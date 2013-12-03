class Country < ActiveRecord::Base
  attr_accessible :abbreviation
  attr_accessible :name
  attr_accessible :north_america
end

class Destination < ActiveRecord::Base
  attr_accessible :address, :latitude, :longitude

  before_save :geocode

  private
  def geocode
    result = Geocoder.search(self.address).first

    if result.present?
      self.latitude = result.latitude
      self.longitude = result.longitude
    end
  end
end

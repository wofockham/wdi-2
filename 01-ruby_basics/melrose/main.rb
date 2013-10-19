require 'pry'
require_relative 'building'
require_relative 'apartment'
require_relative 'tenant'

melrose_place = Building.new
melrose_place.address = '1 Melrose Place'

apartment1 = Apartment.new
apartment1.num_beds = 2

apartment2 = Apartment.new
apartment.num_beds = 3

melrose_place.apartments << apartment1 << apartment2

judy = Tenant.new
apartment1.tenants << judy

binding.pry


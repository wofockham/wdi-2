gem 'pg', '=0.15.1' # You probably don't need this.

require 'pry'
require 'active_record'
require 'logger'

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => 'inceptor', #your postgres.app username
  :password => '',
  :database => "students"
)

ActiveRecord::Base.logger = Logger.new(STDOUT)

class Student < ActiveRecord::Base
  attr_accessible :first, :last, :dob, :gpa
  has_many :phones
end

class Phone < ActiveRecord::Base
  attr_accessible :phone_type, :number
  belongs_to :student
end

binding.pry

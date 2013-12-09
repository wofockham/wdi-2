# == Schema Information
#
# Table name: stairs
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Stair < ActiveRecord::Base
  has_many :fruits
end

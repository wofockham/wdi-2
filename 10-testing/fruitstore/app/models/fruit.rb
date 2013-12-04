# == Schema Information
#
# Table name: fruits
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Fruit < ActiveRecord::Base
  attr_accessible :name
  belongs_to :stair

  def squishy?
    nil
  end
end

# == Schema Information
#
# Table name: fruits
#
#  id                :integer          not null, primary key
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  name              :string(255)
#  type              :string(255)
#  stair_id          :integer
#  country_of_origin :string(255)
#  color             :string(255)
#  age               :string(255)
#  description       :text
#

class Apple < Fruit
  def squishy?
    false
  end
end

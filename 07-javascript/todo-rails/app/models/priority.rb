# == Schema Information
#
# Table name: priorities
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  color      :string(255)      default("#ffffff")
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Priority < ActiveRecord::Base
  attr_accessible :name, :color
  belongs_to :user
  has_many :tasks
end

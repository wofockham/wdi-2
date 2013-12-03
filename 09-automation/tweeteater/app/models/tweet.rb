# == Schema Information
#
# Table name: tweets
#
#  id         :integer          not null, primary key
#  post       :text
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Tweet < ActiveRecord::Base
  attr_accessible :post, :user_id
  belongs_to :user
end

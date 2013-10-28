# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  image           :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string(255)
#  is_admin        :boolean          default(FALSE)
#

class User < ActiveRecord::Base
  has_secure_password

  attr_accessible :name, :image, :password, :password_confirmation
  has_many :mixtapes

  validates :image, :presence => true
  validates :name, :presence => true, :length => { :minimum => 2 }
end

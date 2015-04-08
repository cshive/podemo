# == Schema Information
#
# Table name: organizations
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  identifier :string(255)
#  created_at :datetime
#  updated_at :datetime
#  address1   :string(255)
#

class Organization < ActiveRecord::Base
  validates :name, uniqueness: true
end

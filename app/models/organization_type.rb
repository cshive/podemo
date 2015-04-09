# == Schema Information
#
# Table name: organization_types
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  code       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class OrganizationType < ActiveRecord::Base
  validates :code, uniqueness: true
end

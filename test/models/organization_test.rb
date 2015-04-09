# == Schema Information
#
# Table name: organizations
#
#  id                   :integer          not null, primary key
#  name                 :string(255)
#  identifier           :string(255)
#  created_at           :datetime
#  updated_at           :datetime
#  address1             :string(255)
#  organization_type_id :integer
#
# Indexes
#
#  index_organizations_on_organization_type_id  (organization_type_id)
#

require 'test_helper'

class OrganizationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

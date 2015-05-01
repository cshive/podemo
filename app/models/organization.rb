# == Schema Information
#
# Table name: organizations
#
#  id                     :integer          not null, primary key
#  name                   :string(255)
#  identifier             :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#  address1               :string(255)
#  organization_type_id   :integer
#  organization_status_id :integer
#  address2               :string(255)
#  city                   :string(255)
#  state                  :string(255)
#  zip_code               :integer
#  country                :string(255)
#  ctep_id                :string(255)
#
# Indexes
#
#  index_organizations_on_organization_status_id  (organization_status_id)
#  index_organizations_on_organization_type_id    (organization_type_id)
#

class Organization < ActiveRecord::Base
  # Make organization_type/status object directly accessible from organization
  belongs_to :organization_type
  belongs_to :organization_status
  validates :name, uniqueness: true, presence: true

  scope :with_name, -> (name) { where("name like ?", "%#{name}%") }
end

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
  has_paper_trail

  # Make organization_type/status object directly accessible from organization
  belongs_to :organization_type
  belongs_to :organization_status
  validates :name, uniqueness: true, presence: true

  scope :contains, -> (column, value) { where("#{column} like ?", "%#{value}%") }

  scope :matches, -> (column, value) {
    str_len = value.length
    if value[0] == '*' && value[str_len - 1] != '*'
      where("#{column} like ?", "%#{value[1..str_len - 1]}")
    elsif value[0] != '*' && value[str_len - 1] == '*'
      where("#{column} like ?", "#{value[0..str_len - 2]}%")
    elsif value[0] == '*' && value[str_len - 1] == '*'
      where("#{column} like ?", "%#{value[1..str_len - 2]}%")
    else
      where("#{column} = ?", "#{value}")
    end
  }
end

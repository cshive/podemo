module MigrationHelper
  def basecolumns
    column :created_by, :integer
    column :updated_by, :integer
  end
end

ActiveRecord::ConnectionAdapters::TableDefinition.include(MigrationHelper)
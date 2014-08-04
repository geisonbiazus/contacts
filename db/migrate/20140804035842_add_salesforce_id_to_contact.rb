class AddSalesforceIdToContact < ActiveRecord::Migration
  def change
    add_column :contacts, :salesforce_id, :string
  end
end

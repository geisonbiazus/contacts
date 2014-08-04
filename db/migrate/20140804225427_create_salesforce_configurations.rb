class CreateSalesforceConfigurations < ActiveRecord::Migration
  def change
    create_table :salesforce_configurations do |t|
      t.string :client_id
      t.string :client_secret
      t.string :username
      t.string :password
      t.string :password_secret
      t.references :user, index: true

      t.timestamps
    end
  end
end

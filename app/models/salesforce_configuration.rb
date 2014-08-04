class SalesforceConfiguration < ActiveRecord::Base
  belongs_to :user

  validates :client_id, :client_secret, :username, :password, :password_secret, :presence => true

end

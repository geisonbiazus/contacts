class Contact < ActiveRecord::Base
	include ForceIntegrator::Mapper

  belongs_to :user

  validates :last_name, :presence => true

  map_fields do |m|
  	m.map 'FirstName', :first_name
		m.map 'LastName', :last_name
		m.map 'Email', :email
		m.map 'Phone', :phone
  end

	after_save do
		save_on_salesforce
	end

	after_destroy do
		remove_from_salesforce		
	end

end

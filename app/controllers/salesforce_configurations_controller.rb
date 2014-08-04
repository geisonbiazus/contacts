class SalesforceConfigurationsController < ApplicationController
  before_action :authenticate_user!

  # GET /salesforce_configurations/new
  def edit
    @salesforce_configuration = current_user.salesforce_configuration || SalesforceConfiguration.new
  end

  # POST /salesforce_configurations
  def update
    @salesforce_configuration = current_user.salesforce_configuration || SalesforceConfiguration.new(salesforce_configuration_params)
    @salesforce_configuration.user = current_user

    respond_to do |format|
      if @salesforce_configuration.save
        format.html { redirect_to contacts_path }
      else
        format.html { render :edit }
      end
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def salesforce_configuration_params
      params.require(:salesforce_configuration).permit(:client_id, :client_secret, :username, :password, :password_secret, :user_id)
    end
end

class OrganizationStatusesController < ApplicationController
  load_and_authorize_resource
  before_action :set_organization_status, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @organization_statuses = OrganizationStatus.all
    respond_with(@organization_statuses)
  end

  def show
    respond_with(@organization_status)
  end

  def new
    @organization_status = OrganizationStatus.new
    respond_with(@organization_status)
  end

  def edit
  end

  def create
    @organization_status = OrganizationStatus.new(organization_status_params)
    @organization_status.save
    respond_with(@organization_status)
  end

  def update
    @organization_status.update(organization_status_params)
    respond_with(@organization_status)
  end

  def destroy
    @organization_status.destroy
    respond_with(@organization_status)
  end

  private
    def set_organization_status
      @organization_status = OrganizationStatus.find(params[:id])
    end

    def organization_status_params
      params.require(:organization_status).permit(:name, :code)
    end
end

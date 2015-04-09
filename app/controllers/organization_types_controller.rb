class OrganizationTypesController < ApplicationController
  before_action :set_organization_type, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @organization_types = OrganizationType.all
    respond_with(@organization_types)
  end

  def show
    respond_with(@organization_type)
  end

  def new
    @organization_type = OrganizationType.new
    respond_with(@organization_type)
  end

  def edit
  end

  def create
    @organization_type = OrganizationType.new(organization_type_params)
    @organization_type.save
    respond_with(@organization_type)
  end

  def update
    @organization_type.update(organization_type_params)
    respond_with(@organization_type)
  end

  def destroy
    @organization_type.destroy
    respond_with(@organization_type)
  end

  private
    def set_organization_type
      @organization_type = OrganizationType.find(params[:id])
    end

    def organization_type_params
      params.require(:organization_type).permit(:name, :code)
    end
end

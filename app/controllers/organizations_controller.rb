class OrganizationsController < ApplicationController
  before_action :set_organization, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user! unless Rails.env.test?
  load_and_authorize_resource unless Rails.env.test?

  respond_to :html, :json

  # GET /organizations
  # GET /organizations.json
  def index
    @organizations = Organization.all
    respond_with(@organizations)
  end

  # GET /organizations/1
  # GET /organizations/1.json
  def show
    respond_with(@organization)
  end

  # GET /organizations/new
  def new
    @organization = Organization.new
    respond_with(@organization) do |format|
      format.json { render :show }
    end
  end

  # GET /organizations/1/edit
  def edit
  end

  # POST /organizations
  # POST /organizations.json
  def create
    @organization = Organization.new(organization_params)
    @organization.save
    respond_with(@organization)
  end

  # PATCH/PUT /organizations/1
  # PATCH/PUT /organizations/1.json
  def update
    @organization.update(organization_params)
    respond_with(@organization)
  end

  # DELETE /organizations/1
  # DELETE /organizations/1.json
  def destroy
    @organization.destroy
    respond_with(@organization)
  end

  def create_from_rest_api
    conn = Faraday.new(url: 'https://www.broadinstitute.org') do |faraday|
      faraday.request :url_encoded              # form-encode POST params
      faraday.response :logger                  # log requests to STDOUT
      faraday.adapter Faraday.default_adapter   # make requests with Net::HTTP
    end
    # username and password
    conn.basic_auth('', '')
    response = conn.get '/portal/GTEx/ws/portals/private/get_gtex_donor_data', { donor_name: 'GTEX-000007' }

    # Parsing XML and create new Organization
    if response.status == 200
      xml = Nokogiri::XML(response.body)
      Organization.create(name: 'REST API', identifier: xml.xpath('//donor').attr('privateDonorID').value)
    end

    redirect_to :back, notice: 'HTTP response status: ' + response.status.to_s
  end

  def get_states
    if params[:country].present?
      @state_list = Country.find_country_by_name(params[:country]).states
    end
  end

  def search
    @organizations = Organization.contains('name', params[:name])
    @organizations = @organizations.matches('identifier', params[:identifier]) if params[:identifier].present?
    @organizations = @organizations.matches('ctep_id', params[:ctep_id]) if params[:ctep_id].present?
    respond_with(@organizations) do |format|
      format.json { render :index }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organization
      @organization = Organization.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def organization_params
      params.require(:organization).permit(:name, :identifier, :organization_type_id, :organization_status_id, :address1, :address2, :city, :state, :zip_code, :country, :ctep_id)
    end
end

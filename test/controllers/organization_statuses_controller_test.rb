require 'test_helper'

class OrganizationStatusesControllerTest < ActionController::TestCase
  setup do
    @organization_status = organization_statuses(:one)
    @organization_status.code = 'unique code'
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:organization_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create organization_status" do
    assert_difference('OrganizationStatus.count') do
      post :create, organization_status: { code: @organization_status.code, name: @organization_status.name }
    end

    assert_redirected_to organization_status_path(assigns(:organization_status))
  end

  test "should show organization_status" do
    get :show, id: @organization_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @organization_status
    assert_response :success
  end

  test "should update organization_status" do
    patch :update, id: @organization_status, organization_status: { code: @organization_status.code, name: @organization_status.name }
    assert_redirected_to organization_status_path(assigns(:organization_status))
  end

  test "should destroy organization_status" do
    assert_difference('OrganizationStatus.count', -1) do
      delete :destroy, id: @organization_status
    end

    assert_redirected_to organization_statuses_path
  end
end

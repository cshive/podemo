require 'test_helper'

class OrganizationTypesControllerTest < ActionController::TestCase
  setup do
    @organization_type = organization_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:organization_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create organization_type" do
    assert_difference('OrganizationType.count') do
      post :create, organization_type: { code: @organization_type.code, name: @organization_type.name }
    end

    assert_redirected_to organization_type_path(assigns(:organization_type))
  end

  test "should show organization_type" do
    get :show, id: @organization_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @organization_type
    assert_response :success
  end

  test "should update organization_type" do
    patch :update, id: @organization_type, organization_type: { code: @organization_type.code, name: @organization_type.name }
    assert_redirected_to organization_type_path(assigns(:organization_type))
  end

  test "should destroy organization_type" do
    assert_difference('OrganizationType.count', -1) do
      delete :destroy, id: @organization_type
    end

    assert_redirected_to organization_types_path
  end
end
